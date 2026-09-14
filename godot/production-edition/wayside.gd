extends Node2D

const W := 1280.0
const H := 720.0
const INK := Color("17262d")
const PANEL := Color("213640")
const PAPER := Color("f1e8d2")
const GOLD := Color("e3ba72")
const MUTED := Color("abc1bf")
const GREEN := Color("6b957b")
const SAVE_PATH := "user://wayside_campaign.json"
const LOCAL_SAVE_PATH := "res://campaign_save.json"
const EVIDENCE_POS := [Vector2(390, 290), Vector2(650, 530), Vector2(875, 265)]
const WORK_POS := Vector2(1070, 405)

var projects: Array = []
var mode := "title"
var prior_mode := "hub"
var active := -1
var completed: Array = []
var outcomes: Dictionary = {}
var route_choices: Dictionary = {}
var evidence: Array = []
var enemy_hp := 3
var enemy_pos := Vector2(755, 410)
var enemy_resolved := false
var enemy_avoided := false
var health := 100.0
var stamina := 100.0
var attack_cooldown := 0.0
var invulnerability := 0.0
var enemy_cooldown := 0.0
var enemy_windup := 0.0
var player_pos := Vector2(155, 420)
var facing := Vector2.RIGHT
var selected_plan := 0
var work_needle := 0.0
var work_direction := 1.0
var road := 0
var supply := 4
var trust := 0
var blocs := {"Keepers": 0, "Charter": 0, "Accord": 0}
var companion := "Mara"
var settlement := {"specialty": "Unchosen", "workshop": "Unchosen", "archive": "Unchosen"}
var note := ""
var note_time := 0.0
var visits := 0
var last_result := ""
var save_ok := true

func _ready() -> void:
 var source := FileAccess.get_file_as_string("res://projects.json")
 var parsed = JSON.parse_string(source)
 if parsed is Array:
  projects = parsed
 else:
  push_error("Wayside project data could not be loaded")
 get_window().title = "Wayside — Production Edition working build"
 queue_redraw()

func current() -> Dictionary:
 if active < 0 or active >= projects.size():
  return {}
 return projects[active]

func begin_new() -> void:
 active = -1
 completed.clear()
 outcomes.clear()
 route_choices.clear()
 evidence.clear()
 health = 100
 stamina = 100
 road = 0
 supply = 4
 trust = 0
 blocs = {"Keepers": 0, "Charter": 0, "Accord": 0}
 settlement = {"specialty": "Unchosen", "workshop": "Unchosen", "archive": "Unchosen"}
 companion = "Mara"
 visits = 0
 mode = "hub"
 set_note("Mara has news of a failed crossing. Visit the project ledger to depart.")
 save_game()

func save_game() -> void:
 var data := {"version": 1, "active": active, "completed": completed, "outcomes": outcomes, "route_choices": route_choices, "road": road, "supply": supply, "trust": trust, "blocs": blocs, "settlement": settlement, "companion": companion, "visits": visits}
 var file := FileAccess.open(SAVE_PATH, FileAccess.WRITE)
 if not file and OS.has_feature("editor"):
  file = FileAccess.open(LOCAL_SAVE_PATH, FileAccess.WRITE)
 if file:
  file.store_string(JSON.stringify(data))
  file.close()
  save_ok = true
 else:
  save_ok = false
  push_warning("Campaign save unavailable: " + error_string(FileAccess.get_open_error()))

func load_game() -> bool:
 var parsed = null
 for source in [SAVE_PATH, LOCAL_SAVE_PATH]:
  if not FileAccess.file_exists(source):
   continue
  var raw := FileAccess.get_file_as_string(source)
  if not raw.begins_with("{"):
   continue
  parsed = JSON.parse_string(raw)
  if parsed is Dictionary and int(parsed.get("version", 0)) == 1:
   break
 if not parsed is Dictionary or int(parsed.get("version", 0)) != 1:
  set_note("This save has an unknown format.")
  return false
 active = int(parsed.get("active", -1))
 completed = parsed.get("completed", [])
 outcomes = parsed.get("outcomes", {})
 route_choices = parsed.get("route_choices", {})
 road = int(parsed.get("road", 0))
 supply = int(parsed.get("supply", 4))
 trust = int(parsed.get("trust", 0))
 blocs = parsed.get("blocs", blocs)
 settlement = parsed.get("settlement", settlement)
 companion = str(parsed.get("companion", "Mara"))
 visits = int(parsed.get("visits", 0))
 mode = "hub" if completed.size() < projects.size() else "ending"
 set_note("Campaign loaded.")
 return true

func next_project() -> int:
 for i in projects.size():
  if not completed.has(projects[i]["id"]):
   return i
 return -1

func prepare_project() -> void:
 active = next_project()
 if active < 0:
  mode = "ending"
  save_game()
  return
 evidence.clear()
 enemy_hp = 3
 enemy_resolved = false
 enemy_avoided = false
 enemy_pos = Vector2(755, 410)
 enemy_windup = 0
 enemy_cooldown = 0
 health = maxf(health, 50.0)
 stamina = 100
 player_pos = Vector2(155, 420)
 mode = "travel"

func _process(delta: float) -> void:
 note_time = maxf(0.0, note_time - delta)
 if mode == "site":
  var direction := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
  direction += Vector2(float(Input.is_key_pressed(KEY_D)) - float(Input.is_key_pressed(KEY_A)), float(Input.is_key_pressed(KEY_S)) - float(Input.is_key_pressed(KEY_W)))
  direction = direction.limit_length()
  if direction.length() > 0.1:
   facing = direction.normalized()
   var next := player_pos + facing * (225.0 if stamina > 0 else 160.0) * delta
   if next.x > 575 and next.x < 695 and (next.y < 360 or next.y > 425):
    next.x = player_pos.x
   player_pos = Vector2(clampf(next.x, 45, W - 45), clampf(next.y, 170, 625))
  stamina = minf(100, stamina + delta * 18)
  attack_cooldown = maxf(0, attack_cooldown - delta)
  invulnerability = maxf(0, invulnerability - delta)
  enemy_cooldown = maxf(0, enemy_cooldown - delta)
  if not enemy_resolved:
   var distance := player_pos.distance_to(enemy_pos)
   if enemy_windup > 0:
    enemy_windup -= delta
    if enemy_windup <= 0:
     enemy_cooldown = 1.25
     if player_pos.distance_to(enemy_pos) < 57 and invulnerability <= 0:
      invulnerability = 0.75
      if Input.is_key_pressed(KEY_SHIFT) and stamina >= 16:
       stamina -= 16
       set_note("You held your guard against the marked lunge.")
      else:
       health -= 17
       set_note("The threat struck. Watch for its warning ring.")
   else:
    if distance < 180:
     enemy_pos += (player_pos - enemy_pos).normalized() * delta * (90 if active % 2 == 0 else 62)
    if distance < 52 and enemy_cooldown <= 0:
     enemy_windup = 0.55
   if player_pos.x > 975 and distance > 185:
    enemy_resolved = true
    enemy_avoided = true
    set_note("You reached the worksite without confronting the threat.")
  if health <= 0:
   health = 65
   player_pos = Vector2(155, 420)
   enemy_pos = Vector2(755, 410)
   set_note("You withdrew and recovered at the approach.")
 elif mode == "work":
  work_needle += work_direction * delta * 1.15
  if work_needle > 1.0:
   work_needle = 1.0
   work_direction = -1
  elif work_needle < 0.0:
   work_needle = 0.0
   work_direction = 1
 queue_redraw()

func _unhandled_key_input(event: InputEvent) -> void:
 if not event is InputEventKey or not event.pressed or event.echo:
  return
 var key: int = event.keycode
 if key == KEY_J and mode != "title":
  if mode == "journal":
   mode = prior_mode
  else:
   prior_mode = mode
   mode = "journal"
  return
 if mode == "journal":
  if key == KEY_ESCAPE:
   mode = prior_mode
  return
 if mode == "title":
  if key == KEY_1:
   begin_new()
  elif key == KEY_2:
   load_game()
 elif mode == "hub":
  handle_hub(key)
 elif mode == "travel":
  if key == KEY_1 or key == KEY_2:
   route_choices[current()["id"]] = "Direct" if key == KEY_1 else "Careful"
   if key == KEY_1:
    stamina = 72
   mode = "event"
 elif mode == "event":
  if key == KEY_1:
   trust += 1
   set_note("You stopped to help a stranded traveler. Wayside will hear of it.")
   mode = "site"
  elif key == KEY_2:
   stamina = minf(100, stamina + 10)
   set_note("You kept moving. There is more daylight at the worksite.")
   mode = "site"
 elif mode == "site":
  if key == KEY_E:
   interact_site()
  elif key == KEY_SPACE:
   strike()
  elif key == KEY_CTRL:
   if stamina >= 24:
    player_pos += facing * 75
    stamina -= 24
    invulnerability = 0.5
  elif key == KEY_ESCAPE:
   mode = "hub"
 elif mode == "project":
  if key == KEY_1 or key == KEY_2:
   selected_plan = 0 if key == KEY_1 else 1
   mode = "promise"
  elif key == KEY_ESCAPE:
   mode = "site"
 elif mode == "promise":
  if key == KEY_1:
   mode = "work"
   work_needle = 0
  elif key == KEY_2 or key == KEY_ESCAPE:
   mode = "project"
 elif mode == "work":
  if key == KEY_E or key == KEY_SPACE:
   if work_needle >= 0.42 and work_needle <= 0.62:
    finish_project()
   else:
    stamina = maxf(0, stamina - 8)
    set_note("The brace slips. Set it at the steady mark and try again.")
 elif mode == "return":
  if key == KEY_1:
   mode = "hub" if completed.size() < projects.size() else "ending"
   save_game()
 elif mode == "ending":
  if key == KEY_1:
   mode = "title"
 elif mode == "settlement":
  if key == KEY_ESCAPE:
   mode = "hub"
  elif key == KEY_1:
   settlement["specialty"] = "Public shelter"
   save_game()
  elif key == KEY_2:
   settlement["specialty"] = "Trade stall"
   save_game()
  elif key == KEY_3:
   settlement["workshop"] = "Field logistics"
   save_game()
  elif key == KEY_4:
   settlement["workshop"] = "Equipment refit"
   save_game()
  elif key == KEY_5:
   settlement["archive"] = "Route intelligence"
   save_game()
  elif key == KEY_6:
   settlement["archive"] = "Covenant study"
   save_game()
 elif mode == "companions":
  if key == KEY_ESCAPE:
   mode = "hub"
  elif key == KEY_1:
   companion = "Mara"
   save_game()
  elif key == KEY_2:
   companion = "None"
   save_game()

func handle_hub(key: int) -> void:
 if key == KEY_1:
  prepare_project()
 elif key == KEY_2:
  health = 100
  stamina = 100
  set_note("You rest at the common room. The road can wait until morning.")
 elif key == KEY_3:
  mode = "settlement"
 elif key == KEY_4:
  mode = "companions"
 elif key == KEY_5:
  save_game()
  set_note("Campaign saved." if save_ok else "Save is unavailable on this computer.")
 elif key == KEY_6:
  prior_mode = mode
  mode = "journal"

func interact_site() -> void:
 var closest := -1
 var best := 75.0
 for i in EVIDENCE_POS.size():
  var distance := player_pos.distance_to(EVIDENCE_POS[i])
  if distance < best and not evidence.has(i):
   closest = i
   best = distance
 if closest >= 0:
  evidence.append(closest)
  var field: String = ["material", "testimony", "covenant"][closest]
  set_note(["Observed: ", "Reported: ", "Observed: "][closest] + str(current()[field]))
  return
 if player_pos.distance_to(WORK_POS) < 95:
  if evidence.size() < 3:
   set_note("Survey the material, speak to a witness, and inspect the covenant mark first.")
  elif not enemy_resolved:
   set_note("The worksite is still unsafe. Drive off or avoid the threat.")
  else:
   mode = "project"
  return
 set_note("Look for the three gold evidence markers and the worksite sign.")

func strike() -> void:
 if enemy_resolved or stamina < 22 or attack_cooldown > 0:
  return
 stamina -= 22
 attack_cooldown = 0.5
 var toward: Vector2 = (enemy_pos - player_pos).normalized()
 if player_pos.distance_to(enemy_pos) < 82 and toward.dot(facing) > 0.3:
  enemy_hp -= 1
  enemy_pos += toward * 28
  set_note("A clear strike. The threat recoils.")
  if enemy_hp <= 0:
   enemy_resolved = true
   set_note("The worksite threat retreats.")
 else:
  set_note("Your strike missed. Face the threat and close the distance.")

func finish_project() -> void:
 var project := current()
 var option: Dictionary = project["options"][selected_plan]
 var project_id: String = project["id"]
 if outcomes.has(project_id):
  mode = "return"
  return
 outcomes[project_id] = selected_plan
 completed.append(project_id)
 road += int(option["road"])
 supply += int(option["supply"])
 trust += int(option["trust"])
 blocs[option["bloc"]] = int(blocs[option["bloc"]]) + 1
 visits += 1
 last_result = str(option["effect"])
 mode = "return"
 save_game()

func set_note(value: String) -> void:
 note = value
 note_time = 5.0

func draw_text(value: String, point: Vector2, size: int = 19, color: Color = PAPER) -> void:
 draw_string(ThemeDB.fallback_font, point, value, HORIZONTAL_ALIGNMENT_LEFT, -1, size, color)

func draw_wrapped(value: String, point: Vector2, width_chars: int = 88, size: int = 19, color: Color = PAPER) -> void:
 var words := value.split(" ")
 var line := ""
 var y := point.y
 for word in words:
  if line.length() + word.length() + 1 > width_chars:
   draw_text(line, Vector2(point.x, y), size, color)
   y += size + 8
   line = ""
  line += (" " if line != "" else "") + word
 if line != "":
  draw_text(line, Vector2(point.x, y), size, color)

func draw_panel(rect: Rect2) -> void:
 draw_rect(rect, PANEL)
 draw_rect(rect, GOLD, false, 2)

func _draw() -> void:
 draw_rect(Rect2(0, 0, W, H), INK)
 draw_background()
 draw_panel(Rect2(18, 15, 1244, 112))
 draw_text("WAYSIDE  /  PRODUCTION EDITION WORKING BUILD", Vector2(40, 49), 25, GOLD)
 draw_text("Act %d    Projects %d / 6    Road %d    Supply %d    Trust %d    Companion %s" % [act_number(), completed.size(), road, supply, trust, companion], Vector2(40, 86), 18)
 if mode == "title":
  draw_card("WAYSIDE", "A road is an agreement made visible. Six failures will ask what you are willing to keep.", ["1  Begin a new campaign", "2  Continue saved campaign"], 205)
 elif mode == "hub":
  draw_hub()
 elif mode == "travel":
  draw_travel()
 elif mode == "event":
  draw_card("On the road to " + str(current()["title"]), "A traveler asks for help with a broken axle. The worksite may be less safe after dark.", ["1  Help them; earn trust, arrive later", "2  Press on; reach the site rested"], 205)
 elif mode == "site":
  draw_site()
 elif mode == "project":
  draw_project_choices()
 elif mode == "promise":
  var option: Dictionary = current()["options"][selected_plan]
  draw_card("Terms before work", str(option["name"]) + ": " + str(option["term"]) + "  Known consequence: " + str(option["effect"]), ["1  Accept the term and perform the intervention", "2  Reconsider the plans"], 185)
 elif mode == "work":
  draw_work()
 elif mode == "return":
  draw_return()
 elif mode == "settlement":
  draw_settlement()
 elif mode == "companions":
  draw_companions()
 elif mode == "ending":
  draw_ending()
 elif mode == "journal":
  draw_journal()
 if note_time > 0 and mode != "title":
  draw_panel(Rect2(220, 616, 840, 52))
  draw_wrapped(note, Vector2(240, 648), 84, 17)
 draw_text("J  Journal     Esc  Back from site     Keyboard: WASD / arrows, E, Space, Shift, Ctrl", Vector2(35, 700), 16, MUTED)

func act_number() -> int:
 if completed.size() >= 5:
  return 3
 if completed.size() >= 2:
  return 2
 return 1

func draw_background() -> void:
 for i in 20:
  var x := float(i * 77 + 18)
  var y := float(160 + (i * 97) % 460)
  draw_circle(Vector2(x, y), 31, Color("28483f"))
  draw_circle(Vector2(x + 8, y + 5), 18, Color("3d6653"))
 draw_line(Vector2(0, 377), Vector2(W, 377), Color("9d825e"), 92)
 draw_line(Vector2(0, 377), Vector2(W, 377), Color("d3b78a"), 3)

func draw_card(title: String, body: String, options: Array, y: float = 180) -> void:
 draw_panel(Rect2(195, y, 890, 415))
 draw_text(title, Vector2(225, y + 50), 31, GOLD)
 draw_wrapped(body, Vector2(225, y + 94), 77, 20)
 for i in options.size():
  draw_text(str(options[i]), Vector2(230, y + 230 + i * 47), 21)

func draw_hub() -> void:
 var next := next_project()
 draw_rect(Rect2(70, 225, 215, 190), Color("665e4e"))
 draw_polygon(PackedVector2Array([Vector2(58, 225), Vector2(180, 145), Vector2(298, 225)]), PackedColorArray([Color("4a4b47")]))
 draw_text("WAYSIDE", Vector2(112, 320), 27)
 for i in min(completed.size(), 6):
  draw_circle(Vector2(392 + i * 76, 385), 18, GOLD)
 draw_panel(Rect2(550, 180, 680, 415))
 draw_text("The crossroads remembers", Vector2(575, 221), 29, GOLD)
 draw_text("Next: " + (str(projects[next]["title"]) if next >= 0 else "The road is settled"), Vector2(575, 260), 19)
 draw_text("1  Depart through the project ledger", Vector2(575, 316), 19)
 draw_text("2  Rest at the common room", Vector2(575, 350), 19)
 draw_text("3  Wayside services and choices", Vector2(575, 384), 19)
 draw_text("4  Speak with companions", Vector2(575, 418), 19)
 draw_text("5  Save campaign", Vector2(575, 452), 19)
 draw_text("6  Field journal", Vector2(575, 486), 19)
 if visits > 0:
  draw_text("Returning workers speak of the roads you changed.", Vector2(575, 548), 16, MUTED)

func draw_travel() -> void:
 var project := current()
 draw_card("Choose the approach", str(project["region"]) + " / " + str(project["title"]) + ". " + str(project["problem"]), ["1  Direct road — quicker, taxing on arrival", "2  Careful road — slower, preserve stamina"], 180)

func draw_site() -> void:
 var project := current()
 draw_rect(Rect2(575, 150, 120, 450), Color("426c7b") if str(project["region"]) != "Region Two" else Color("685d6b"))
 draw_line(Vector2(570, 392), Vector2(705, 392), Color("5f5445"), 60)
 draw_line(Vector2(573, 366), Vector2(701, 418), GOLD, 5)
 draw_line(Vector2(573, 418), Vector2(701, 366), GOLD, 5)
 draw_text(str(project["title"]), Vector2(60, 175), 27, GOLD)
 for i in EVIDENCE_POS.size():
  if evidence.has(i):
   continue
  draw_circle(EVIDENCE_POS[i], 13, GOLD)
  draw_circle(EVIDENCE_POS[i], 6, INK)
  draw_text(["Material", "Witness", "Covenant"][i], EVIDENCE_POS[i] + Vector2(-40, -22), 15)
 draw_rect(Rect2(WORK_POS.x - 23, WORK_POS.y - 23, 46, 46), GOLD)
 draw_text("WORKSITE", WORK_POS + Vector2(-47, -35), 15)
 if not enemy_resolved:
  draw_circle(enemy_pos, 22, Color("af695f"))
  draw_circle(enemy_pos + Vector2(6, -4), 4, Color("f5dfb3"))
  if enemy_windup > 0:
   draw_arc(enemy_pos, 56, 0, TAU, 32, Color("f0b66b"), 4)
  draw_text(str(project["hazard"]), enemy_pos + Vector2(-40, -33), 15)
 draw_circle(player_pos, 17, PAPER)
 draw_circle(player_pos, 10, Color("3e6172"))
 draw_line(player_pos, player_pos + facing * 26, GOLD, 5)
 draw_panel(Rect2(28, 515, 360, 82))
 draw_text("Health %d   Stamina %d" % [int(health), int(stamina)], Vector2(46, 546), 18)
 draw_text("Evidence %d / 3   Threat %s" % [evidence.size(), "clear" if enemy_resolved else "active"], Vector2(46, 577), 17)
 draw_text("E inspect / work   Space strike   Shift guard   Ctrl evade", Vector2(440, 573), 16)

func draw_project_choices() -> void:
 var project := current()
 draw_panel(Rect2(75, 145, 1130, 475))
 draw_text(str(project["title"]) + " / choose an approach", Vector2(100, 190), 28, GOLD)
 draw_wrapped("Survey: " + str(project["material"]) + " " + str(project["testimony"]) + " " + str(project["covenant"]), Vector2(100, 232), 100, 18)
 for i in 2:
  var option: Dictionary = project["options"][i]
  var y := 335 + i * 115
  draw_text("%d  %s" % [i + 1, str(option["name"])], Vector2(110, y), 22, GOLD)
  draw_wrapped(str(option["effect"]), Vector2(137, y + 31), 98, 17)
 draw_text("Esc  Return to the site", Vector2(104, 592), 16, MUTED)

func draw_work() -> void:
 draw_card("Hold the line", "Set the brace while the marker passes through the steady band. Press E or Space at the center. A miss costs stamina; the commitment is never consumed twice.", [], 180)
 draw_rect(Rect2(345, 440, 590, 20), Color("3b4c50"))
 draw_rect(Rect2(590, 440, 120, 20), GREEN)
 draw_line(Vector2(345 + work_needle * 590, 425), Vector2(345 + work_needle * 590, 475), GOLD, 5)
 draw_text("E / Space to intervene", Vector2(515, 515), 21, GOLD)

func draw_return() -> void:
 draw_panel(Rect2(160, 160, 960, 450))
 draw_text("The road changes", Vector2(190, 210), 31, GOLD)
 draw_wrapped(last_result, Vector2(190, 262), 47, 20)
 draw_text("A local witness will carry this account to Wayside.", Vector2(190, 365), 17)
 draw_text("Road %d    Supply %d    Trust %d" % [road, supply, trust], Vector2(190, 405), 18)
 draw_rect(Rect2(805, 255, 240, 155), Color("426c7b"))
 if selected_plan == 0:
  draw_rect(Rect2(805, 314, 240, 55), Color("a39474"))
  for i in 5:
   draw_rect(Rect2(818 + i * 45, 370, 13, 35), Color("776954"))
 else:
  draw_line(Vector2(813, 310), Vector2(1036, 310), GOLD, 3)
  draw_polygon(PackedVector2Array([Vector2(853, 345), Vector2(982, 345), Vector2(962, 370), Vector2(876, 370)]), PackedColorArray([Color("806e54")]))
  draw_line(Vector2(921, 344), Vector2(921, 281), GOLD, 4)
 draw_text("AFTER / " + str(current()["options"][selected_plan]["name"]), Vector2(805, 445), 16, GOLD)
 draw_text("1  Return to Wayside and witness the response", Vector2(200, 530), 22, GOLD)

func draw_settlement() -> void:
 draw_card("Wayside services", "The common room, stores, workshop, infirmary, archive, training yard and flexible plot share this crossroads. Choices are bounded; the roads bring visible change home.", ["1  Plot: public shelter / 2  Plot: trade stall", "3  Workshop: logistics / 4  Workshop: equipment refit", "5  Archive: route intelligence / 6  Archive: covenant study", "Esc  Return to the crossroads"], 150)
 draw_text("Plot %s   Workshop %s   Archive %s" % [settlement["specialty"], settlement["workshop"], settlement["archive"]], Vector2(225, 600), 16, GOLD)

func draw_companions() -> void:
 draw_card("Companions at Wayside", "Mara knows the project ledgers and the cost of every delayed repair. A second companion place remains open while the design package tests companion autonomy and identity.", ["1  Travel with Mara", "2  Travel alone", "Esc  Return to the crossroads"], 175)

func draw_journal() -> void:
 draw_panel(Rect2(105, 145, 1070, 480))
 draw_text("FIELD JOURNAL  /  J to close", Vector2(135, 188), 29, GOLD)
 draw_text("Projects", Vector2(140, 240), 21, GOLD)
 for i in projects.size():
  var project: Dictionary = projects[i]
  var status := "Complete" if completed.has(project["id"]) else ("Current" if i == active else "Unvisited")
  draw_text("%d. %s — %s" % [i + 1, str(project["title"]), status], Vector2(145, 275 + i * 36), 18)
 draw_text("Keepers %d   Charter %d   Accord %d" % [blocs["Keepers"], blocs["Charter"], blocs["Accord"]], Vector2(145, 545), 18, GOLD)
 if mode == "journal" and prior_mode == "site":
  draw_text("Observed material and marks; reported testimony: %d / 3 sources" % evidence.size(), Vector2(145, 585), 17)

func draw_ending() -> void:
 var ending := "Living Accord"
 if blocs["Keepers"] > blocs["Charter"] and blocs["Keepers"] > blocs["Accord"]:
  ending = "Renewed Bounds"
 elif blocs["Charter"] > blocs["Keepers"] and blocs["Charter"] > blocs["Accord"]:
  ending = "Chartered Roads"
 if blocs["Keepers"] >= 1 and blocs["Charter"] >= 1 and blocs["Accord"] >= 2 and trust >= 9:
  ending = "Wayside Compact"
 draw_panel(Rect2(140, 150, 1000, 470))
 draw_text("The roads remember", Vector2(175, 205), 35, GOLD)
 draw_text(ending, Vector2(175, 265), 28)
 draw_wrapped("Six choices have redrawn the compact. No policy erased its costs. Wayside's people can name which passages reopened, which boundaries held, and whose promises now carry the road.", Vector2(175, 320), 82, 20)
 draw_text("Road %d   Supply %d   Trust %d" % [road, supply, trust], Vector2(175, 470), 19)
 draw_text("1  Return to title     J  Review the full journal", Vector2(175, 550), 20, GOLD)


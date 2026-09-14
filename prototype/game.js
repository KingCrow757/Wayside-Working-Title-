(function () {
  "use strict";
  const Core = window.WaysideCore;
  const canvas = document.querySelector("#game");
  const ctx = canvas.getContext("2d");
  const ui = Object.fromEntries(["toast","dialogue","speaker","dialogueTitle","dialogueText","choices","startPanel","objectiveTitle","objectiveText","progress","journal","evidenceCount"].map(id => [id, document.querySelector(`#${id}`)]));
  let state = Core.freshState();
  let running = false, dialogueOpen = false, last = performance.now(), toastTimer = 0, attackTimer = 0, evadeTimer = 0;
  const keys = new Set();
  const interactables = [];

  const scenes = {
    wayside: {
      bg: "#586247", road: [[0,410],[280,365],[500,395],[720,340],[960,365]],
      title: "Wayside · South Yard",
      objects: [{x:478,y:282,r:28,type:"npc",label:"Iven, road steward"}]
    },
    crossing: {
      bg: "#505c4b", road: [[0,420],[240,365],[430,350],[600,330],[960,380]],
      title: "The Siltway Crossing",
      objects: [
        {x:235,y:320,r:20,type:"evidence",id:"ledger",label:"Abandoned works ledger"},
        {x:405,y:395,r:18,type:"evidence",id:"rope",label:"Severed guide rope"},
        {x:575,y:360,r:20,type:"evidence",id:"scour",label:"Undercut footing"},
        {x:695,y:282,r:19,type:"evidence",id:"token",label:"Displaced boundary token"},
        {x:825,y:420,r:28,type:"npc",id:"ferryman",label:"Mara, ferryman"},
        {x:860,y:260,r:30,type:"project",label:"Survey point"}
      ]
    },
    return: { bg: "#626b4d", road: [[0,405],[280,360],[500,390],[720,335],[960,360]], title: "Wayside · The road remembers", objects: [{x:478,y:282,r:28,type:"npc",label:"Iven, road steward"}] }
  };

  function resetPlayer(scene) {
    state.player.x = scene === "crossing" ? 90 : 478;
    state.player.y = scene === "crossing" ? 425 : 390;
  }

  function showToast(text) {
    ui.toast.textContent = text; ui.toast.classList.add("show");
    clearTimeout(toastTimer); toastTimer = setTimeout(() => ui.toast.classList.remove("show"), 1800);
  }

  function openDialogue(speaker, title, text, choices) {
    dialogueOpen = true;
    ui.speaker.textContent = speaker;
    ui.dialogueTitle.textContent = title;
    ui.dialogueText.textContent = text;
    ui.choices.replaceChildren(...choices.map(c => {
      const b = document.createElement("button"); b.textContent = c.label;
      b.addEventListener("click", () => { closeDialogue(); c.action(); });
      return b;
    }));
    ui.dialogue.classList.remove("hidden");
  }

  function closeDialogue() { dialogueOpen = false; ui.dialogue.classList.add("hidden"); }

  function beginBriefing() {
    openDialogue("Iven", "The Siltway has gone quiet", "A crossing crew missed two reports. Find out whether the river, someone with a knife, or the old terms broke it. You have provisions for one route.", [
      {label:"Take the ridge road — slower, clear sightlines", action:() => depart("ridge")},
      {label:"Take the marsh track — faster, uncertain footing", action:() => depart("marsh")}
    ]);
  }

  function depart(route) {
    state.route = route; state.scene = "crossing"; state.stage = "investigate"; resetPlayer("crossing");
    state.enemies = route === "ridge"
      ? [{x:500,y:260,hp:3,vx:0,vy:0,kind:"road thief"},{x:630,y:245,hp:3,vx:0,vy:0,kind:"road thief"}]
      : [{x:540,y:250,hp:2,vx:0,vy:0,kind:"marsh hound"},{x:650,y:235,hp:2,vx:0,vy:0,kind:"marsh hound"}];
    showToast(route === "ridge" ? "Ridge road: the cutters spot you early." : "Marsh track: you arrive unseen, but tired.");
    if (route === "marsh") state.player.stamina = 62;
    updateUI();
  }

  function inspect(obj) {
    if (obj.type === "npc" && state.scene === "wayside") return beginBriefing();
    if (obj.type === "npc" && state.scene === "return") return showAftermath();
    if (obj.type === "npc" && obj.id === "ferryman") {
      state = Core.addEvidence(state, "ferryman");
      openDialogue("Mara", "Two banks, one passage", "The old crossing held because both banks witnessed it each spring. The new crew asked only the east-bank charter office.", [{label:"Record her testimony", action:updateUI}]);
      return updateUI();
    }
    if (obj.type === "evidence") {
      const before = state.evidence.length; state = Core.addEvidence(state, obj.id);
      showToast(before === state.evidence.length ? "Already recorded." : Core.EVIDENCE[obj.id].text);
      return updateUI();
    }
    if (obj.type === "project") return projectDecision();
  }

  function projectDecision() {
    if (!state.inferred) return showToast("You need at least three pieces of evidence before committing the road.");
    if (!state.threatResolved && !state.threatAvoided) return showToast("The worksite is not secure. Defeat the threat or reach the survey point unseen.");
    openDialogue("Field journal", "Choose what the road will permit", "The evidence supports two workable answers. Neither restores the old crossing without a lasting obligation.", [
      {label:"Restore a stone span · seasonal heavy-passage limit", action:() => finishProject("span")},
      {label:"Establish a shared ferry · keep the spring channel open", action:() => finishProject("ferry")},
      {label:"Not yet", action:() => showToast("The decision remains open.")}
    ]);
  }

  function finishProject(choice) {
    state = Core.resolveProject(state, choice); resetPlayer("return"); save(true); updateUI();
    showAftermath();
  }

  function showAftermath() {
    const span = state.project === "span";
    openDialogue("Iven", span ? "Stone under terms" : "A road that floats", span
      ? "Carts are moving again. The Charter office praises the span; Mara has posted the spring weight limits where no merchant can pretend not to see them."
      : "The ferry employs both banks and moves supplies quickly. Charter calls it temporary. The people using it have begun calling it theirs.", [
      {label:"Review the consequence ledger", action:() => showToast(`Community ${state.community} · supplies ${state.supply} · promise recorded`)}
    ]);
  }

  function interact() {
    if (dialogueOpen) return;
    let nearest = null, distance = Infinity;
    for (const obj of interactables) {
      const d = Math.hypot(obj.x-state.player.x,obj.y-state.player.y);
      if (d < distance) { nearest=obj; distance=d; }
    }
    if (nearest && distance < nearest.r + 44) inspect(nearest);
  }

  function attack() {
    if (dialogueOpen || state.scene !== "crossing" || attackTimer > 0 || state.player.stamina < 18) return;
    attackTimer=.32; state.player.stamina-=18;
    for (const e of state.enemies) if (e.hp>0 && Math.hypot(e.x-state.player.x,e.y-state.player.y)<66) e.hp--;
    if (state.enemies.length && state.enemies.every(e=>e.hp<=0)) { state.threatResolved=true; showToast("The worksite is secure. The survivors flee the road."); }
  }

  function evade() {
    if (dialogueOpen || evadeTimer>0 || state.player.stamina<25) return;
    evadeTimer=.45; state.player.stamina-=25;
    let [dx,dy]=movementVector(); if (!dx&&!dy) dy=1;
    const n=Math.hypot(dx,dy)||1; state.player.x+=dx/n*62; state.player.y+=dy/n*62;
  }

  function movementVector() {
    let x=(keys.has("d")||keys.has("arrowright")?1:0)-(keys.has("a")||keys.has("arrowleft")?1:0);
    let y=(keys.has("s")||keys.has("arrowdown")?1:0)-(keys.has("w")||keys.has("arrowup")?1:0);
    const pads=navigator.getGamepads?.()||[]; const p=pads[0];
    if(p){ if(Math.abs(p.axes[0])>.2)x=p.axes[0]; if(Math.abs(p.axes[1])>.2)y=p.axes[1]; }
    return [x,y];
  }

  function update(dt) {
    attackTimer=Math.max(0,attackTimer-dt); evadeTimer=Math.max(0,evadeTimer-dt);
    state.player.stamina=Math.min(100,state.player.stamina+26*dt);
    if(!dialogueOpen){
      const [mx,my]=movementVector(), n=Math.hypot(mx,my)||1, speed=145*(evadeTimer>0?1.35:1);
      state.player.x=Math.max(24,Math.min(936,state.player.x+mx/n*speed*dt));
      state.player.y=Math.max(120,Math.min(505,state.player.y+my/n*speed*dt));
    }
    if(state.scene==="crossing") updateEnemies(dt);
    pollGamepad();
  }

  function updateEnemies(dt) {
    for(const e of state.enemies){
      if(e.hp<=0)continue;
      const d=Math.hypot(state.player.x-e.x,state.player.y-e.y);
      if(d<190 && d>30){ e.x+=(state.player.x-e.x)/d*62*dt; e.y+=(state.player.y-e.y)/d*62*dt; }
      if(d<35 && evadeTimer<=0){
        const guarding=keys.has("k");
        state.player.hp-=dt*(guarding?0.22:0.7);
        if(state.player.hp<=0){ state.player.hp=6; state.player.x=100; state.player.y=450; showToast("Driven back — no progress was lost."); }
      }
    }
    if(state.inferred && !state.threatResolved && state.player.x>810 && state.player.y>330){ state.threatAvoided=true; }
  }

  let padLatch={};
  function pollGamepad(){
    const p=(navigator.getGamepads?.()||[])[0]; if(!p)return;
    [[0,interact],[2,attack],[1,evade]].forEach(([i,fn])=>{const on=p.buttons[i]?.pressed;if(on&&!padLatch[i])fn();padLatch[i]=on;});
    if(p.buttons[4]?.pressed)keys.add("k"); else if(!keys.has("keyboard-k"))keys.delete("k");
  }

  function draw() {
    const scene=scenes[state.scene];
    ctx.fillStyle=scene.bg; ctx.fillRect(0,0,960,540);
    drawTexture(); drawRoad(scene.road); drawEnvironment();
    interactables.length=0;
    for(const obj of scene.objects){ interactables.push(obj); drawObject(obj); }
    if(state.scene==="crossing") { drawWater(); state.enemies.forEach(drawEnemy); }
    if(state.scene==="return") drawAftermath();
    drawPlayer(); drawHUD(scene.title);
  }

  function drawTexture(){
    ctx.globalAlpha=.12; ctx.strokeStyle="#d5c798";
    for(let i=0;i<34;i++){const y=(i*83)%540,x=(i*137)%960;ctx.beginPath();ctx.moveTo(x,y);ctx.lineTo(x+80,y+18);ctx.stroke();}
    ctx.globalAlpha=1;
  }
  function drawRoad(points){ctx.strokeStyle="#98886a";ctx.lineWidth=86;ctx.lineCap="round";ctx.lineJoin="round";ctx.beginPath();points.forEach(([x,y],i)=>i?ctx.lineTo(x,y):ctx.moveTo(x,y));ctx.stroke();ctx.strokeStyle="#b1a07e";ctx.lineWidth=3;ctx.setLineDash([10,15]);ctx.stroke();ctx.setLineDash([]);}
  function drawEnvironment(){
    ctx.fillStyle="#2f3b2c"; for(let i=0;i<18;i++){const x=(i*167+45)%950,y=135+(i*97)%330;ctx.beginPath();ctx.arc(x,y,18+(i%3)*5,0,7);ctx.fill();}
    if(state.scene!=="crossing"){ctx.fillStyle="#3b3125";ctx.fillRect(380,190,195,92);ctx.fillStyle="#766344";ctx.beginPath();ctx.moveTo(360,195);ctx.lineTo(480,120);ctx.lineTo(600,195);ctx.fill();}
  }
  function drawWater(){ctx.fillStyle="rgba(69,92,91,.88)";ctx.fillRect(710,115,92,425);ctx.strokeStyle="#b7c2ad";ctx.lineWidth=2;for(let y=145;y<530;y+=32){ctx.beginPath();ctx.moveTo(718,y);ctx.bezierCurveTo(742,y-8,770,y+8,796,y);ctx.stroke();}}
  function drawObject(o){
    if(o.type==="evidence"&&state.evidence.includes(o.id))return;
    const near=Math.hypot(o.x-state.player.x,o.y-state.player.y)<o.r+44;
    ctx.fillStyle=o.type==="npc"?"#d7b461":o.type==="project"?"#b8c28e":"#ced4a5";
    if(o.type==="npc"){ctx.beginPath();ctx.arc(o.x,o.y-13,10,0,7);ctx.fill();ctx.fillRect(o.x-8,o.y-2,16,30);}
    else {ctx.beginPath();ctx.arc(o.x,o.y,o.r*.45,0,7);ctx.fill();ctx.strokeStyle="#f3e7b2";ctx.lineWidth=2;ctx.stroke();}
    if(near){ctx.fillStyle="rgba(17,18,14,.9)";ctx.fillRect(o.x-80,o.y-55,160,25);ctx.fillStyle="#efe3b8";ctx.font="13px system-ui";ctx.textAlign="center";ctx.fillText(`${o.label} · E`,o.x,o.y-38);}
  }
  function drawEnemy(e){if(e.hp<=0)return;ctx.fillStyle="#813f35";ctx.beginPath();ctx.arc(e.x,e.y,18,0,7);ctx.fill();ctx.strokeStyle="#d99370";ctx.stroke();ctx.fillStyle="#17120f";ctx.fillRect(e.x-17,e.y-29,34,5);ctx.fillStyle="#c66b50";ctx.fillRect(e.x-17,e.y-29,34*(e.hp/3),5);}
  function drawPlayer(){const p=state.player;ctx.fillStyle=evadeTimer>0?"#f0d688":"#d8d0ae";ctx.beginPath();ctx.arc(p.x,p.y-13,10,0,7);ctx.fill();ctx.fillStyle="#344850";ctx.fillRect(p.x-9,p.y-2,18,31);if(attackTimer>0){ctx.strokeStyle="#f1d17f";ctx.lineWidth=5;ctx.beginPath();ctx.arc(p.x,p.y,48,-.8,.8);ctx.stroke();}}
  function drawHUD(title){ctx.fillStyle="rgba(17,18,14,.82)";ctx.fillRect(15,15,330,72);ctx.fillStyle="#d7b461";ctx.font="12px system-ui";ctx.textAlign="left";ctx.fillText(title.toUpperCase(),29,38);ctx.fillStyle="#d9cfaa";ctx.font="14px system-ui";ctx.fillText(`Health ${Math.ceil(state.player.hp)}/6`,29,62);ctx.fillStyle="#1a1d16";ctx.fillRect(128,51,180,11);ctx.fillStyle="#91a375";ctx.fillRect(128,51,180*state.player.stamina/100,11);}
  function drawAftermath(){ctx.fillStyle=state.project==="span"?"#746b57":"#6e5940";if(state.project==="span"){ctx.fillRect(705,310,100,35);ctx.fillRect(725,278,14,67);ctx.fillRect(770,278,14,67);}else{ctx.beginPath();ctx.ellipse(760,370,58,20,0,0,7);ctx.fill();ctx.strokeStyle="#d7c79a";ctx.beginPath();ctx.moveTo(720,260);ctx.lineTo(720,380);ctx.stroke();}}

  function updateUI(){
    let title="Speak with Iven", text="The road steward is waiting in the yard.";
    if(state.scene==="crossing"){title=state.inferred?"Secure the site and choose a remedy":"Investigate the failed crossing";text=state.inferred?"Reach the survey point. Fight the road threat or slip around it.":"Collect at least three distinct pieces of evidence.";}
    if(state.scene==="return"){title="Witness what changed";text=state.project==="span"?"The restored span moves carts under a seasonal restriction.":"The shared ferry moves goods while leaving the spring channel open.";}
    ui.objectiveTitle.textContent=title;ui.objectiveText.textContent=text;
    ui.progress.innerHTML=`<div class="meter"><i style="width:${state.evidence.length/5*100}%"></i></div>`;
    const entries=state.evidence.map(id=>`<div class="entry"><strong>${Core.EVIDENCE[id].type}</strong>${Core.EVIDENCE[id].text}</div>`);
    if(state.inferred)entries.push(`<div class="entry"><strong>Inferred</strong>The crossing failed through both material damage and broken consent. Repair must address both.</div>`);
    if(state.promise)entries.push(`<div class="entry"><strong>Promise</strong>${state.promise}</div>`);
    ui.journal.innerHTML=entries.length?entries.join(""):`<p class="muted">Evidence will be separated into observed facts, reports, and inferences.</p>`;
    ui.evidenceCount.textContent=`${state.evidence.length} / 5`;
  }

  function save(silent=false){localStorage.setItem("wayside-crossing-save",JSON.stringify(state));if(!silent)showToast("Patrol saved locally.");}
  function load(){const raw=localStorage.getItem("wayside-crossing-save");if(!raw)return showToast("No local patrol save found.");try{state=Core.normalizeSave(JSON.parse(raw));running=true;ui.startPanel.classList.add("hidden");closeDialogue();updateUI();showToast("Patrol restored.");}catch{showToast("The save could not be read.");}}
  function restart(){localStorage.removeItem("wayside-crossing-save");state=Core.freshState();running=false;closeDialogue();ui.startPanel.classList.remove("hidden");updateUI();}

  document.querySelector("#startButton").addEventListener("click",()=>{running=true;ui.startPanel.classList.add("hidden");updateUI();beginBriefing();});
  document.querySelector("#saveButton").addEventListener("click",()=>save());
  document.querySelector("#loadButton").addEventListener("click",load);
  document.querySelector("#restartButton").addEventListener("click",()=>{if(confirm("Restart the prototype and remove its local save?"))restart();});
  addEventListener("keydown",e=>{const k=e.key.toLowerCase();keys.add(k);if(k==="k")keys.add("keyboard-k");if(["e"," "].includes(k)){e.preventDefault();interact();}if(k==="j")attack();if(k==="l")evade();});
  addEventListener("keyup",e=>{const k=e.key.toLowerCase();keys.delete(k);if(k==="k"){keys.delete("keyboard-k");keys.delete("k");}});

  document.querySelectorAll("[data-hold]").forEach(button => {
    const key=button.dataset.hold;
    const press=e=>{e.preventDefault();keys.add(key);};
    const release=e=>{e.preventDefault();keys.delete(key);};
    button.addEventListener("pointerdown",press);
    button.addEventListener("pointerup",release);
    button.addEventListener("pointercancel",release);
    button.addEventListener("pointerleave",release);
  });
  document.querySelectorAll("[data-action]").forEach(button => {
    const actions={interact,attack,evade};
    button.addEventListener("pointerdown",e=>{e.preventDefault();actions[button.dataset.action]();});
  });

  function frame(now){const dt=Math.min(.033,(now-last)/1000);last=now;if(running)update(dt);draw();requestAnimationFrame(frame);}
  updateUI();requestAnimationFrame(frame);
})();

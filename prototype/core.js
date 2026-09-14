(function (root, factory) {
  const api = factory();
  if (typeof module === "object" && module.exports) module.exports = api;
  root.WaysideCore = api;
})(typeof globalThis !== "undefined" ? globalThis : this, function () {
  "use strict";

  const VERSION = 1;
  const EVIDENCE = {
    scour: { type: "Observed", text: "Fresh scour undercut the eastern footing; this was not simple age." },
    rope: { type: "Observed", text: "The guide rope was cut cleanly after the crossing began to fail." },
    token: { type: "Observed", text: "A boundary token was moved from the old witness stone to the new road marker." },
    ferryman: { type: "Reported", text: "Mara says the channel was safe while both banks renewed the spring crossing rite." },
    ledger: { type: "Reported", text: "The works ledger records a Charter crew deepening the east approach last autumn." }
  };

  function freshState() {
    return {
      version: VERSION,
      scene: "wayside",
      stage: "briefing",
      route: null,
      evidence: [],
      inferred: false,
      threatResolved: false,
      threatAvoided: false,
      project: null,
      promise: null,
      community: "Strained",
      supply: "Dear",
      standing: { keepers: "Known", charter: "Known", accord: "Known" },
      memories: [],
      player: { x: 478, y: 390, hp: 6, stamina: 100 },
      enemies: []
    };
  }

  function addEvidence(state, id) {
    if (!EVIDENCE[id] || state.evidence.includes(id)) return state;
    const next = structuredClone(state);
    next.evidence.push(id);
    if (next.evidence.length >= 3) next.inferred = true;
    return next;
  }

  function resolveProject(state, choice) {
    if (!state.inferred || !["span", "ferry"].includes(choice)) throw new Error("Project requirements not met");
    const next = structuredClone(state);
    next.project = choice;
    next.scene = "return";
    next.stage = "aftermath";
    if (choice === "span") {
      next.promise = "Maintain the eastern anchor and limit heavy passage during spring water.";
      next.community = "Stable";
      next.supply = "Ordinary";
      next.standing.charter = "Trusted";
      next.memories.push("Restored a stone span under renewed seasonal limits.");
    } else {
      next.promise = "Fund both-bank ferrymen and leave the channel unpinned each spring.";
      next.community = "Stable";
      next.supply = "Plentiful";
      next.standing.accord = "Trusted";
      next.memories.push("Established a shared ferry instead of forcing a permanent span.");
    }
    return next;
  }

  function normalizeSave(candidate) {
    const base = freshState();
    if (!candidate || candidate.version !== VERSION) return base;
    const out = Object.assign(base, candidate);
    out.player = Object.assign(base.player, candidate.player || {});
    out.standing = Object.assign(base.standing, candidate.standing || {});
    out.evidence = [...new Set((candidate.evidence || []).filter(id => EVIDENCE[id]))];
    out.memories = Array.isArray(candidate.memories) ? candidate.memories.slice(0, 3) : [];
    out.enemies = Array.isArray(candidate.enemies) ? candidate.enemies : [];
    return out;
  }

  return { VERSION, EVIDENCE, freshState, addEvidence, resolveProject, normalizeSave };
});

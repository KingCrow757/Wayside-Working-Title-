"use strict";
const assert = require("node:assert/strict");
const Core = require("./core.js");

let state = Core.freshState();
assert.equal(state.scene, "wayside");
state = Core.addEvidence(state, "scour");
state = Core.addEvidence(state, "rope");
state = Core.addEvidence(state, "token");
assert.equal(state.evidence.length, 3);
assert.equal(state.inferred, true);
assert.equal(Core.addEvidence(state, "token").evidence.length, 3);

const span = Core.resolveProject(state, "span");
assert.equal(span.scene, "return");
assert.equal(span.project, "span");
assert.equal(span.standing.charter, "Trusted");
assert.match(span.promise, /seasonal|spring/i);

const ferry = Core.resolveProject(state, "ferry");
assert.equal(ferry.supply, "Plentiful");
assert.equal(ferry.standing.accord, "Trusted");

const corrupt = Core.normalizeSave({version:1,evidence:["scour","fake","scour"],player:{hp:2},memories:["a","b","c","d"]});
assert.deepEqual(corrupt.evidence,["scour"]);
assert.equal(corrupt.player.hp,2);
assert.equal(corrupt.memories.length,3);

assert.throws(() => Core.resolveProject(Core.freshState(), "span"), /requirements/);
console.log("Wayside core tests passed");

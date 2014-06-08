var Engine = require('famous/core/Engine');
var Surface = require('famous/core/Surface');
var Transform = require('famous/core/Transform');
var StateModifier = require('famous/modifiers/StateModifier');
var Draggable = require('famous/modifiers/Draggable');

var PhysicsEngine   = require('famous/physics/PhysicsEngine');
var Body            = require('famous/physics/bodies/Body');
var Rectangle          = require('famous/physics/bodies/Rectangle');
var Wall            = require('famous/physics/constraints/Wall');

var mainContext = Engine.createContext();

console.log(mainContext.getSize());
var surface = new Surface({
    size: [384,216],
    classes: ['board'],
});

var modifier = new StateModifier({
    origin: [0.5, 0.5]
});

var draggable = new Draggable({});
draggable.subscribe(surface);

var node = mainContext.add(modifier);
node.add(draggable).add(surface);

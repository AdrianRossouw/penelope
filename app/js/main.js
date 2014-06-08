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

var surface = new Surface({
    size: [3840,2160],
    classes: ['board'],
});

/*var leftWall    = new Wall({normal : [1,0,0],  distance : contextSize[0]/2.0, restitution : 0.5});
var rightWall   = new Wall({normal : [-1,0,0], distance : contextSize[0]/2.0, restitution : 0.5});
var topWall     = new Wall({normal : [0,1,0],  distance : contextSize[1]/2.0, restitution : 0.5});
var bottomWall  = new Wall({normal : [0,-1,0], distance : contextSize[1]/2.0, restitution : 0.5});
*/
var modifier = new StateModifier({
    origin: [0.5, 0.5]
});

var draggable = new Draggable({});
draggable.subscribe(surface);

var node = mainContext.add(modifier);
node.add(draggable).add(surface);

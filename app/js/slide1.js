define(function(require, exports, module) {
  var Engine = require('famous/core/Engine');
  var Surface = require('famous/core/Surface');
  var Transform = require('famous/core/Transform');
  var View = require('famous/core/View');
  var StateModifier = require('famous/modifiers/StateModifier');

  var mainContext = Engine.createContext();

  var penorigin = new StateModifier({
    origin: [0.5, 0.5]
  });

  var penelopeNode = mainContext.add(penorigin);

  var penelope = new Surface({
      size: [100, 100],
      properties: {
        backgroundColor: 'red'
      }
  });

  penelopeNode.add(penelope);

  var origins = [
    [0, 0],
    [0, 0.5],
    [0, 1],
    [0.5, 0],
    [0.5, 1],
    [1, 0],
    [1, 0.5],
    [1, 1]
  ];

  for (var i = 0; i < origins.length; i++) {
    var surface = new Surface({
      size: [100, 100],
      properties: {
        textAlign: 'center',
        color: 'white',
        backgroundColor: 'grey'
      }
    });

    var modifier = new StateModifier({
      origin: origins[i]
    });

    mainContext.add(modifier).add(surface);
  }
});

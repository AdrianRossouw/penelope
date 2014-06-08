_ = require 'underscore'
Engine = require 'famous/core/Engine'
Surface = require 'famous/core/Surface'
Modifier = require 'famous/core/Modifier'
StateModifier = require 'famous/modifiers/StateModifier'

# Create the main context
mainContext = Engine.createContext()

surface = (w, l) ->
  new Surface
    size: [w, l]
    classes: ['board']
    properties:
        border: '1px solid red'


origin = (x, y) ->
  new StateModifier
    origin: [x, y]
    align: [x, y]

mainContext.add(origin(0.5, 0.5)).add(surface(100, 200))


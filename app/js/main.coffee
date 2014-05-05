_ = require 'underscore'
Engine = require 'famous/core/Engine'
Surface = require 'famous/core/Surface'
Modifier = require 'famous/core/Modifier'
Scrollview = require 'famous/views/Scrollview'

# Create the main context
mainContext = Engine.createContext()

scrollView = new Scrollview
  size: [undefined, undefined]
  properties:
    backgroundColor: 'blue'


surfs = []

scrollView.sequenceFrom(surfs)


eachFn = (slides) ->
  (el, i) ->
    slides.push new Surface(
      content: '123'
      size: [100, 100]
      properties:
        backgroundColor: "hsl(" + (i * 360 / 8) + ", 100%, 50%)"
        color: "#404040"
        lineHeight: '200px'
        textAlign: 'center'
    )

    #el.parentNode.removeChild(el)

#_(document.querySelectorAll('.slide')).each(eachFn(surfs))
_(_.range(0, 10)).each(eachFn(surfs))

console.log(surfs)

mainContext.add(scrollView)






Engine = require 'famous/core/Engine'
Surface = require 'famous/core/Surface'
Modifier = require 'famous/core/Modifier'
Transform = require 'famous/core/Transform'
Scrollview = require 'famous/views/Scrollview'
StateModifier = require("famous/modifiers/StateModifier")

surfs = []
eachFn = (slides) -> (el, i) ->
  el.parentNode.removeChild(el)

_(document.querySelectorAll('.slide')).each(eachFn(surfs))

mainContext = Engine.createContext()

surface = new Surface(
  size: [
    100
    100
  ]
  properties:
    color: "white"
    textAlign: "center"
    backgroundColor: "#FA5C4F"
)

stateModifier = new StateModifier()

mainContext.add(stateModifier).add surface

stateModifier.setTransform Transform.translate(100, 300, 0),
  duration: 1000
  curve: "easeInOut"

outline = new Surface
  size: [200, 200]
  content: 'Hello world in Famo.us'
  classes: ['bgColor']
  properties:
    lineHeight: '200px'
    textAlign: 'center'

outlineModifier = new Modifier
  origin: [0.5, 0.5]

mainContext
  .add outlineModifier
  .add outline


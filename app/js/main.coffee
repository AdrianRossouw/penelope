_ = require 'underscore'
Engine = require 'famous/core/Engine'
Surface = require 'famous/core/Surface'
Modifier = require 'famous/core/Modifier'
Scrollview = require 'famous/views/Scrollview'

# Create the main context
mainContext = Engine.createContext()


eachFn = (slides) -> (el, i) ->
  slides.push new Surface(
    content: '123' # el.cloneNode(true)
    size: [undefined, undefined],
    properties:
      backgroundColor: "hsl(" + (i * 360 / 8) + ", 100%, 50%)",
      color: "#404040",
      lineHeight: '200px',
      textAlign: 'center')

  el.parentNode.removeChild(el)

scrollView = new Scrollview
  size: [undefined, undefined]
  properties:
    backgroundColor: 'blue'

surfs = []

scrollView.sequenceFrom(surfs)

_(document.querySelectorAll('.slide')).each(eachFn(surfs))

mainContext.add(scrollView)

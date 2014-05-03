_ = require 'underscore'
Engine = require 'famous/core/Engine'
Surface = require 'famous/core/Surface'
Modifier = require 'famous/core/Modifier'
Scrollview = require 'famous/views/Scrollview'


# Create the main context
mainContext = Engine.createContext()


surfs = []

scrollView = new Scrollview()

_(document.querySelectorAll('.slide')).each (el, i) ->
  surfs.push new Surface(
    content: '123' # el.cloneNode(true)
    size: [undefined, undefined],
    properties:
      backgroundColor: "hsl(" + (i * 360 / 8) + ", 100%, 50%)",
      color: "#404040",
      lineHeight: '200px',
      textAlign: 'center')

  el.parentNode.removeChild(el)

scrollView.sequenceFrom surfs
mainContext.add scrollView

//this is really bad psuedocode to let me think about structure
//without worrying about specific implementation

var = a whole bunch of require statments

//everything is relative to the context, but I'm guessing this "context"
//will be nested inside something else, so we can have "slides," and not
//sure how that works
var mainContext = Engine.createContext();

//not sure if this should be a "view" or a "node" or a "RenderNode"
var penelopeNode = mainContext.add()

//if we want to imitate the thomaswasalone style, a little doohicky above the div:
var penelopeHat = new Surface({
  penelopehat.png
})

//need a way to manage the text state alongside the animations so this doesn't
//get annoying to update
var penelopeText = new Surface({
  text style...
})

//here she is:
var penelope = new Surface({
    size: [100, 100],
    properties: {
      backgroundColor: 'red'
    }
});

//plug the hat, text, and penelope div together as children of the node
penelopeNode.add(penelope).add(penelopeText).add(penelopeHat)

//make a grid of divs, with a blank center
function fancyGridMaker(){
}

//connect it to the context
mainContext.add(fancyGrid)

//a modifier to toggle grid from colorful to biege
function gridColorToggle(){
  statemodifier biegeify
}

//BEGIN ANIMATION

//step 1

initial reveal (fade in?)

//step 2

fade in penelopeText("penelope was a div") and penelopeHat
gridColorToggle to biege

//step 3

penelopeText("Unlike her .siblings...")

//step 4 -- "zooming in" is not as easy as I thought it would be

statemodifier penelopeNode animate jump down
statemodifier fancyGrid fly away

//step 5

penelopeText("More than anything else...")

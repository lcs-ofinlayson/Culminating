//: [Previous](@previous) / [Next](@next)
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 500
let preferredHeight = 500
/*:
 ## Required code
 
 Lines 21 to 29 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
 ## Optional code
 
 Below are two generally helpful configurations.
 
 If you do not wish to work in all four quadrants of the Cartesian plane, comment out the code on line 44.
 
 If you do not wish to see a grid, comment out the code on line 48.
 
 */
canvas.highPerformance = true

// Move the origin from the bottom-left corner of the canvas to it's centre point





let scale = 20
/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
 
 */

////Draw a grid
//canvas.drawAxes(withScale: true, by: 20, color: .black
//)


// Create a turtle that will draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)


//Move up

turtle.penUp()
turtle.left(by: 90)
turtle.forward(steps: 2 * scale)
turtle.right(by: 90)
turtle.penDown()



turtle.setPosition(to: Point(x: 20, y: 40))
//Fill the square
func fillSquare(){
    
    for _ in 1 ... 10 {
        
        turtle.setHeading(to:180)
        turtle.forward(steps: 20)
        turtle.right(by: 90)
        turtle.forward(steps: 1)
        turtle.right(by: 90)
        turtle.forward(steps: 20)
        turtle.left(by: 90)
        turtle.forward(steps: 1)
        turtle.left(by: 90)
        
    }

    turtle.left(by: 90)
    turtle.forward(steps: 20)
    turtle.left(by: 90)
    
    
}


// Make a function for the shapes to move across

func moveOverForNewShape() {
    turtle.penUp()
    turtle.forward(steps: 5 * scale)
    turtle.penDown()
    
    
}





// Make a function for the shape

func drawShape() {

    turtle.penDown()
// Draw shape with squares
fillSquare()
turtle.forward(steps: 20)
fillSquare()
turtle.forward(steps: 20)
fillSquare()
turtle.right(by: 90)
turtle.forward(steps: 20)
fillSquare()
turtle.forward(steps: 20)
fillSquare()
turtle.left(by: 180)
turtle.forward(steps: 40)
fillSquare()
turtle.forward(steps: 40)
turtle.right(by: 180)
turtle.forward(steps: 20)
turtle.left(by: 90)
turtle.forward(steps: 20)
turtle.right(by: 90)
fillSquare()
turtle.penUp()
turtle.left(by: 90)
turtle.forward(steps: 60)
turtle.left(by: 90)
turtle.forward(steps: 20)
turtle.penDown()
fillSquare()
    turtle.penUp()
    turtle.right(by: 180)
    turtle.forward(steps: 2 * scale)
    turtle.left(by: 90)
    turtle.forward(steps: 20)
    turtle.left(by: 90)
    turtle.penDown()
    turtle.penUp()
    

}

for _ in 1 ... 6 {
    
drawShape()
moveOverForNewShape()

}
        
 //Make a function for the more rows of the shape

func drawRowOfShape() {

    for _ in 1 ... 6 {
drawShape()
        turtle.forward(steps: 100)
        

    }


}


//Make more rows of shape and make a loop


for _ in 1 ... 5 {
    
    turtle.penUp()
    turtle.left(by: 180)
    turtle.forward(steps: 24 * scale)
    turtle.right(by: 90)
    turtle.forward(steps: 80)
    turtle.right(by: 90)
    turtle.penDown()
    drawRowOfShape()
    
    
}






canvas.highPerformance = false

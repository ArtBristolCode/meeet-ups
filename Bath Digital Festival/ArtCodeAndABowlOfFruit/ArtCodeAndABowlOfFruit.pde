
/*

 Art, Code and a Bowl of Fruit
 Bath Digital Festival
 
 0. run and empty sketch!
 
 1. use size(width, height), play with numbers
 
 2. draw a circle with ellipse(x, y, width, height)
 
 3. intro coordinates, top left is 0, 0 everything is measured in pixels!
 
 4. add colour with fill(red, green, blue), mix some colour
 
 5. try changing the order, fill needs to go before you draw! (dip stamp before stamping!)
 
 6. let's try the same with stroke, then add both!
 
 7. can turn either off, with noStroke() or noFill()
 
 7a. try commenting out one at a time!
 
 8. let's change the canvas with background(red, green, blue), again where does it go? 
 
 9. let's make things move! add void setup() , and void draw() 
 
 10. add interactivity with mouseX!
 
 11. now mouseY!
 
 12. add if (mousePressed), but showing with true and false first!
 
 13. PARTY TIME - change all the colours! Break to twiddle!
 
 14. Add subtley, by drawing line(xStart, yStart, xFinish, yFinish) from previous to current position.
 
 15. how about changing the width with strokeWeight(pixels)
 
 16. try out random(max), replace numbers with this, how about the stroke width!
 
 17. let's make this more subtle, let's create a variable to calculate and store distance moved
 
 18. use a float to store a variable with decimal points, and int is an integer round number and better for counting!
 
 19. 
 
 
 EXTRAS:
 - SPRAYPAINT
 - HSB mode!

 
 */

void setup() {                       // this runs once at beginning

  size(600, 600);                    // set size of canvas

  background(255);                   // make the background white
}



void draw() {                        // this runs in a loop every frame

  if (keyPressed) {
    stroke(255);                     // if any key is pressed, draw in white (erase)
  } else {
    stroke(0);                       // otherwise, draw in black
  }
  
  if (mousePressed) {                // only draw line if mouse is pressed
    
    float distMoved = dist(pmouseX, pmouseY, mouseX, mouseY);
    
    strokeWeight(distMoved*0.5);     // the line gets wider the faster you move
    
    line(pmouseX, pmouseY, mouseX, mouseY); // line from last to current position
  }
}

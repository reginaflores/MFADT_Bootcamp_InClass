//----------------------------------------------------
// DT Bootcamp 2014, Parsons the New School for Design. 
// Day 6 - nested for() loops
// http://processing.org/reference/for.html
//----------------------------------------------------

void setup() {
    size(500, 500); 
    colorMode(HSB);
} 
 
void draw() {
    background(0);
    ellipseMode(CORNER);
    int circleSize = 20;
 
    for(int y = 0; y < mouseY; y = y + circleSize){    
        for(int x = 0; x < mouseX; x = x + circleSize){     
            fill(x/2, 255, 255);
            ellipse(x, y, circleSize, circleSize);
         
        }
    }
}

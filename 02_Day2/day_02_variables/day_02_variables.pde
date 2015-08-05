
//Define Global Variables

color circleColor;
int circleColRed;

//previous positions of mouse
float pMouseX; 
float pMouseY; 

void setup() {
  background(250);
  size(600,600); 
  circleColRed = 0;
  circleColor = color(circleColRed, 100, 200); 
}

void draw() { 
  background(250);

   //define variables that are functions of mouse and previous mouse
   float diffX = abs(mouseX-pMouseX); 
   float diffY = abs(mouseY-pMouseY); 
   float diff = diffX + diffY;
   
   //define a variable that is a function of variables
   circleColor = color(circleColRed, diff, diff);
   
   //fill the ellipses
   fill(circleColor);
   
   //main 2 ellipses in center of screen
   ellipse(300, 300, 200, 200); 
   ellipse(300, 300, 100, 100);
   
   //ellipse that moves with mouse and whose size moves with mouse
   ellipse(mouseX, mouseY, diff, diff); 
      
   circleColRed++;  
   
}

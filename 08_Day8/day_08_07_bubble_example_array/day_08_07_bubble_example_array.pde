
Bubble[] bubbles = new Bubble[100];

void setup(){
  size(599,599);

  for (int i = 0; i < bubbles.length; i++){
    bubbles[i] = new Bubble(random(0,599), random(0,599), random(1,20), random(255), random(255), random(255));
  }
}

void draw(){
  background(255);
  
 
  // b2.x = mouseX;
  // b2.y = mouseY;

  
  for (int i = 0; i < bubbles.length; i++){
    bubbles[i].display();
    bubbles[i].ascend();
    bubbles[i].top();
      
  }  
  
}

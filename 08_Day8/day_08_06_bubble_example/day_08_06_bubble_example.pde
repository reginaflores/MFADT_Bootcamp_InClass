Bubble b1;
Bubble b2;

void setup(){
  size(599,599);

  //we can pass values into the class
  //these get passed into the Constructor
  
  b1 = new Bubble(100, 300, 50);
  b2 = new Bubble(300, 300, 100);

}

void draw(){
  background(255);
  
  float d = dist(b1.x, b1.y, b2.x, b2.y);
 
  
  // if(b1.overlaps(b2)){
  //   background(255,0,0);
  // }
  
  // b2.x = mouseX;
  // b2.y = mouseY;
  
  b1.display();
  b1.ascend();
  b1.top();

  b2.display();
  b2.ascend();
  b2.top();
}

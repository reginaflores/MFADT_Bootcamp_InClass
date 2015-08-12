
int num = 100;
Bubble[] bubbles = new Bubble[num];

// PVector location = new PVector(random(0,width), random(0,height));
// float r = random(5,20);
// float red = random(0,255);
// float green = random(0,255);
// float blue = random(0,255);

void setup(){
  size(600,600);

  for (int i = 0; i < bubbles.length; i++){

    bubbles[i] = new Bubble();
  }
}

void draw(){
  background(255);
  

  for (int i = 0; i < bubbles.length; i++){
    bubbles[i].display();
    bubbles[i].ascend();
    bubbles[i].top();
      
  }  
  
}

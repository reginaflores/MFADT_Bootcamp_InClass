int [ ] posX = new int[50];
int [ ] posY = new int[50];

void setup() {
  size(600,600);
  for (int i=0; i<50; i++) { 
    posX[i] = int(random(width));
  }

  for (int i=0; i<50; i++) { 
    posY[i] = int(random(height));
  }
}

void draw(){

  for (int i = 0; i < 50; i++) {
    ellipse(posX[i], posY[i], 30, 30);
  }


}

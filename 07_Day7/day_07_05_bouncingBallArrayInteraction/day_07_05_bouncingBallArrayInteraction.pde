
int numBalls = 10000;
int buffer = 10;
int disappearRadius = 50;


int [] ballsX = new int[numBalls];
int [] ballsY = new int[numBalls];

int [] speedX = new int[numBalls];
int [] speedY = new int[numBalls];

int [] radii = new int[numBalls];

color [] baseColor = new color[numBalls];
int [] opacity = new int[numBalls];
color [] drawColor = new color[numBalls];

void setup() {
  size(500, 500);
  noStroke();

  //initialize ball positions a few pixels away from the
  //walls so they dont get stuck
  for (int i = 0; i < numBalls; i++) {
    ballsX[i] = int(random(buffer, width - buffer));
    ballsY[i] = int(random(buffer, height - buffer));

    //Make balls have initial velocity in all directions
    speedX[i] = int(random(-5, 5));
    speedY[i] = int(random(-5, 5));

    //add speed to balls with 0 initial speed
    if (speedX[i] == 0) {
      speedX[i] = 1;
    }
    if (speedY[i] == 0) {
      speedY[i] = 1;
    }    

    radii[i] = int(random(4, 10));

    baseColor[i] = color(0, int(random(100, 255)), 0);
    opacity[i] = 255;
    drawColor[i] = color(baseColor[i], opacity[i]);
  }
}


void draw() {
  background(255);

  update();
  ballBoundry();
  drawBalls();
  ballInteraction();


}

void update(){

  //update positions
  for (int i = 0; i < numBalls; i++) {
    ballsX[i] = ballsX[i] + speedX[i];
    ballsY[i] = ballsY[i] + speedY[i];
  }

}

void drawBalls() {

  //draw balls
  for (int i = 0; i < numBalls; i++) {
    drawColor[i] = color(baseColor[i], opacity[i]);
    fill(drawColor[i]);
    ellipse(ballsX[i], ballsY[i], radii[i]*2, radii[i]*2);
  }
}

void ballBoundry(){
    //handle collisions 
  for (int i = 0; i < numBalls; i++) {
    if (ballsX[i] < 0) {
      speedX[i] = speedX[i] * -1;
      ballsX[i] = 0;
    }
    if (ballsX[i] > width) {
      speedX[i] = speedX[i] * -1;
      ballsX[i] = width;
    }

    if (ballsY[i] < 0) {
      speedY[i] = speedY[i] * -1;
      ballsY[i] = 0;
    }
    if (ballsY[i] > height) {
      speedY[i] = speedY[i] * -1;
      ballsY[i] = height;
    }
  }

}

void ballInteraction(){

  //turn all balls close to cursor opaque
  for (int i = 0; i < numBalls; i++) {
    if (dist(ballsX[i], ballsY[i], mouseX, mouseY) < disappearRadius) {
      opacity[i] = 0;
    }
  
  if(mousePressed){
    opacity[i]=255;
  }
  }
}

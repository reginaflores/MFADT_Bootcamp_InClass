

float x, y; // the position of our circle
float radius; // the radius of our circle

float speed; //the speed of sine wave oscillation (aka Frequency)
float size; //the size of sine wave oscillation (aka Amplitude)

int r, g, b; //color values (these could be manipulated too)

//booleans that will be controlled by our key inputs:
boolean wave, circle, pulse, oscillate, spiral, swapXY;

void setup() {
  size(400, 400);
  noStroke();

  x = width/2;
  y = height/2;
  radius = 20;

  speed = 0.05;
  size = width/4;

  circle = true;
}

void draw() {
 
  fill(0, 10);
  rect(0, 0, width, height);

  if (circle == true) {
    x = width/2 + sin(frameCount*speed)*size;
    y = height/2 + cos(frameCount*speed)*size;
  }

  if (wave == true) {
    x =  frameCount % width;
    y = height/2 + sin(frameCount*speed)*size;
  }

  if (oscillate == true) {
    x = width/2 + sin(frameCount*speed)*size;
    y = height/2;
  }

  if (spiral == true) {
    size += 0.1;
    x = width/2 + sin(frameCount*speed)*size;
    y = height/2 + cos(frameCount*speed)*size;
  }

  if (pulse == true) {
    radius = abs(sin(frameCount*speed)*size);
  }

  if (swapXY == true) {
    float tempX = x;
    x=y;
    y=tempX;
  } 


  if (keyPressed) { //using keyPressed conditional instead of 
    // separate function, just to show different options.

    if (key == CODED) { //note that we need this extra "if CODED" conditional.

      if (keyCode == UP) {
        //increase the amplitude
        size++;
      } else if (keyCode == DOWN) {
        //decrease the amplitude
        size--;
      } else if (keyCode == RIGHT) {
        //increase the frequency
        speed*=1.05;
      } else if (keyCode == LEFT) {
        //decrease the frequency
        speed*=0.95;
      }
    }
  }

  //here's where we actually draw our shape --
  // Just a simple circle!
  r = 255;
  g = 255;
  b = 0;
  fill(r, g, b);
  ellipse(x, y, radius, radius);
}


void keyPressed() {
  if (key == 'c') {
    circle = true;
    wave = pulse = oscillate = spiral = false;
  }

  if (key == 'w') {
    wave = true;
    circle = pulse = oscillate = spiral = false;
  }

  if (key == 'p') {
    pulse = true;
    wave = circle = oscillate = spiral = false;
  }

  if (key == 'o') {
    oscillate = true; 
    wave = circle = pulse = spiral = false;
  }

  if (key == 's') {
    size = 0; //reset the size variable so we can
    //create a spiral out from center;
    spiral = true; 
    wave = circle = pulse = oscillate = false;
  }

  if (key == 'y') {
    //this conditional is more complex, because
    //if x and y are swapped one way we want to swap back
    if (swapXY == false) {
      swapXY = true;
    } else {
      swapXY = false;
    }
  }
}

//what it means to be a bubble
class Bubble {

  PVector location;
  PVector velocity;
  float r;   
  float red;
  float green;
  float blue;

  Bubble() {
    location = new PVector(random(0, width), random(0, height));
    velocity = new PVector(0, -2);
    r = random(5,20);
    red = random(0,255);
    green = random(0,255);
    blue = random(0,255);

  }


  void ascend() {
    location.add(velocity);
  }

  void display() {
    stroke(0);
    strokeWeight(10);
    fill(red, green, blue);
    ellipse(location.x, location.y, 2*r, 2*r);
  }

  void top() {
    if (location.y < r) {
      location.y = r;
    }
  }
}

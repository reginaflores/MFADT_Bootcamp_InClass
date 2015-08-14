class Player {

  //data
  float x, y;
  PVector velocity;
  boolean alive;

  //constuctor
  Player(float x, float y) {
    this.x = x;
    this.y = y;
    alive = true;
  }

  //methods

  void display() {
    if (alive == true) {
      pushMatrix();
      translate(x, y);
      noFill();
      stroke(200, 255, 255, 180);
      triangle(0, -12, 8, 8, -8, 8);      
      popMatrix();
    }
  }

  void update() {

    //bounding conditions
    if (x < 0) {
      x = width;
    }
    if (x > width) {
      x = 0;
    }

    //movement
    x += velocity.x;

    //Keys on the keyboard for moving my ship
    if (keyLeft == true) {
      velocity.x -= 0.5;
    } else if (keyRight == true) {
      velocity.x += 0.5;
    }
  }
}///this is the end dont lose me


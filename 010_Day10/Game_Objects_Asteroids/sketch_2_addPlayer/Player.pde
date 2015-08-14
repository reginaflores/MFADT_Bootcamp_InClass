class Player {
  float x, y;
  PVector velocity;
  boolean alive;
  
  Player(float x, float y) {
       this.x = x;
       this.y = y;
       alive = true;
  }
  
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
    if (alive == true) {
      //bounding consitions
      if (x < 0) {
        x = width;
      }
      if ( x > width) {
        x = 0;
      }
      //movement
      x += velocity.x;
      if (keyLeft == true) {
        velocity.x -= 0.5;
      } else if (keyRight == true) {
        velocity.x += 0.5;
      }
      //} else {
      //  velocity.x -= velocity.x * 0.1;
      //}
            
    }
  }
  
}
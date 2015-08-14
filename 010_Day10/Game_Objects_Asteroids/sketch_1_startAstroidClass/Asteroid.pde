class Asteroid
{
  float x, y;
  float velocity; 
  float w;
  
  //constructor
  Asteroid(float x, float y, float velocity)
  {
    this.x = x;
    this.y = y;
    this.velocity = velocity;
    w = random(30,100);
  }
  
  void update() {
    y += velocity;
  }
  void display() {
    pushMatrix();
    translate(x, y);
    noFill();
    stroke(200,255,255,180);
    ellipse(0,0,w,w);
    popMatrix();
  }
  
 
}
class Asteroid{

  //Data
  float x, y;
  float velocity;
  float w;
  
  //Constructor
  Asteroid(float x, float y, float velocity){
    this.x = x;
    this.y = y;
    this.velocity = velocity;
    w = random(30, 100);

  }

  //Define the methods of our class
  void update(){
    y += velocity;
  }
  
  void display(){
    pushMatrix();//lock anything between these two
    translate(x,y);
    noFill();
    stroke(200,255,255,180);
    ellipse(0,0,w,w);   
    popMatrix();
  }
  
  void shotCollision(Shot shot, Asteroid asteroid, int asteroidIndex, int shotIndex){
  
    if(dist(x, y, shot.x, shot.y) < w/2 + 2){
      shots.remove(shotIndex);
      asteroids.remove(asteroidIndex);
      score++;
    }
  
  }
  
  void playerCollision(Player ship_, Asteroid asteroid_){
    ship = ship_;
    if(dist(x, y, ship.x, ship.y) < w/2 + 5){
      fill(255,255,255,180);
      ellipse(ship.x, ship.y, 180, 180);
      ship.alive = false;
    }
    
  
  }
  
}//END OF MY CLASS - DONT LOSE ME

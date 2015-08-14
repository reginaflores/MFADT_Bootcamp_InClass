
Player ship;
ArrayList<Asteroid> asteroids;

boolean keyLeft = false;
boolean keyRight = false;

void setup() {
  size(1000, 800);
  frameRate(30);
  background(10);
  noCursor();
  ship = new Player(width/2, height/2);
  asteroids = new ArrayList<Asteroid>();

  restart();
}

void draw() {
  rectMode(CORNER);
  noStroke();
  fill(10, 80);
  rect(0, 0, width, height);
  
  
  ship.display();
  ship.update();
  
  for (int i = 0; i < asteroids.size (); i++) {
    Asteroid tempAst = asteroids.get(i);
    tempAst.update();
    tempAst.display();

    if (ship.alive == true) {
     tempAst.playerCollision(ship, tempAst);
    }
    
    if (ship.alive == false) {
      restart();
    }
  } 
}

void keyPressed() {
  if (key == CODED) {

    if (keyCode == LEFT) { 
      keyLeft = true;
    }
    if (keyCode == RIGHT) { 
      keyRight = true;
    }
  }

}

void keyReleased() {
  if (key == CODED) {
    if (keyCode == LEFT) { 
      keyLeft = false;
    }
    if (keyCode == RIGHT) { 
      keyRight = false;
    }
  }
}

void restart() {
   asteroids.clear();
   asteroids.add(new Asteroid(random(width), 0, random(2, 6)));
   asteroids.add(new Asteroid(random(width), 0, random(2, 6)));
   asteroids.add(new Asteroid(random(width), 0, random(2, 6)));
   ship.x = width/2;
   ship.y = height*0.9;
   ship.velocity = new PVector(0,0);
   ship.alive = true;
}
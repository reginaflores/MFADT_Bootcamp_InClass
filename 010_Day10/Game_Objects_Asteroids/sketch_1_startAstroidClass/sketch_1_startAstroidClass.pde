
ArrayList<Asteroid> asteroids;


void setup() {
  size(1000, 800);
  frameRate(30);
  background(10);
  asteroids = new ArrayList<Asteroid>();
  noCursor();
  restart();
}

void draw() {
  rectMode(CORNER);
  noStroke();
  fill(10, 80);
  rect(0, 0, width, height);
  

  for (int i = 0; i < asteroids.size (); i++) {
    Asteroid tempAst = asteroids.get(i);
    tempAst.update();
    tempAst.display();
    if (tempAst.y > height+tempAst.w*0.5){
      asteroids.remove(i);
    }
  } 
}

void restart() {
  asteroids.clear();
  asteroids.add(new Asteroid(random(width), 0, random(2, 6)));
  asteroids.add(new Asteroid(random(width), 0, random(2, 6)));
  asteroids.add(new Asteroid(random(width), 0, random(2, 6)));

}
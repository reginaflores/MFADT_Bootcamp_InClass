
void setup() {
  size(500, 500);
}

void draw() {

  background(149, 212, 213);

  //system variable
  rectMode(CENTER);
  noFill();
  //fill(0);
  stroke(0);
  strokeWeight(5);
  rect(width/2, height/2, 425, 425);

  //Draw a dog

  //Head
  noStroke();
  fill(255);
  ellipse(width/2, height/2, 200, 200);

  //dogs muzzle
  ellipse(width/2, (height/2)+60, 150, 150);


  //one patch on the left eye
  fill(133, 70, 50);
  ellipse((width/2)-55, (height/2)-20, 75, 50);

  //eyes
  fill(0);
  ellipse((width/2)-45, (height/2)-20, 20, 20);
  ellipse((width/2)+45, (height/2)-20, 20, 20);

  //nose
  ellipse(width/2, (height/2)+40, 50, 50);

  //ears
  triangle((width/2)-150, (height/2)-100, (width/2)-80, 
  (height/2)-94, (width/2)-170, (height/2)-60);
}


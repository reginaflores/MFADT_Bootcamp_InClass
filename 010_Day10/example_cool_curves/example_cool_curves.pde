//Created by Gene Kogan

void setup() {
  
  size(800,800);
  noLoop();
}

void draw() {

  PVector[] p;
  int[] s;
  int n = (int)random(10, 24);
  do {
    s = new int[] {
      (int) random(1, n), (int)random(1, n), (int)random(1, n)
      };
    } 
    while (n%s[2]==0);
  p = new PVector[n];
  for (int i = 0; i < n; i++) {
    float ang = lerp(0, TWO_PI, (float) i/n);
    p[i] = new PVector(300*cos(ang), 300*sin(ang));
  }

  background(255); 
  stroke(0, 150);
  fill(0, 20);
  translate(width/2, height/2);
  int i1 = 0;
  do {
    int i2 = (i1 + s[0]) % n;
    int i3 = (i1 + s[1]) % n;
    int i4 = (i1 + s[2]) % n;
    beginShape();
    curveVertex(p[i1].x, p[i1].y);
    curveVertex(p[i2].x, p[i2].y);
    curveVertex(p[i3].x, p[i3].y);
    curveVertex(p[i4].x, p[i4].y);
    endShape(CLOSE);
    bezier(p[i1].x, p[i1].y, p[i2].x, p[i2].y, p[i3].x, p[i3].y, p[i4].x, p[i4].y );
    i1 = i3;
  } 
  while (i1 != 0);
}

void keyPressed(){

  redraw();


}

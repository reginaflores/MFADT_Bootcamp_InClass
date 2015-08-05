//video grabber


import processing.video.*;
Capture video;

int cols;
int rows;
int videoScale = 10;

void setup() {

  size(640, 480);
  cols = width/videoScale;
  rows = height/videoScale;
  video = new Capture(this, cols, rows, 30);
  video.start();
}

void draw() {

  if (video.available()) {
    video.read();
  }
  //image(video,0,0);
  background(0);
  //video.loadPixels();

  for (int x = 0; x < cols; x++) {
    for (int y=0; y < rows; y++) {
      int xx = x*videoScale;
      int yy = y*videoScale;
      color c = video.get(x,y);
      float bright = brightness(c);
      float sz = map(bright, 0, 255, 0, 10);
      float rot = map(mouseX, 0, width, 0, 359);
      stroke(c);
      fill(c);
      //point(xx,yy); 
      pushMatrix();
      translate(xx,yy);
      rotate(radians(rot));
      rectMode(CENTER);
      rect(0,0,sz,sz);
      popMatrix();
      
    }
  }
}



PImage myImage;
//int pointillize = 10;

void setup(){
  size(625, 417);
  myImage = loadImage("grumpyBunny.jpg");
  background(0);
  smooth();
}

void draw(){
  println(myImage.width);
  println(myImage.height);
  int x = int(random(myImage.width));
  int y = int(random(myImage.height));
  int loc = x + y*myImage.width;  
  // println(loc);
  loadPixels();
  float r = red(myImage.pixels[loc]);
  float g = green(myImage.pixels[loc]);
  float b = blue(myImage.pixels[loc]);
  noStroke();
  
  fill(r,g,b);
  // ellipse(x,y,pointillize,pointillize);
  rect(x,y,10,10);
}

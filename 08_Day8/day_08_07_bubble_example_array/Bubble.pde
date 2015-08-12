//what it means to be a bubble
class Bubble{
  
  float x;
  float y;
  float r;   
  float red;
  float green;
  float blue;
  
  Bubble(float x_, float y_, float r_, float red_, float green_, float blue_){
    x = x_;
    y = y_;
    r = r_;
    red = red_;
    green = green_;
    blue = blue_;
  }
  
 boolean overlaps(Bubble other){
   float d = dist(x, y, other.x, other.y);
   if(d < r + other.r){
     return true;
   } else{
     return false;
   }
 } 
  
  void ascend(){
    y--;
  }
  
  void display(){
    stroke(0);
    strokeWeight(10);
    fill(red, green, blue);
    ellipse(x,y,2*r,2*r);
  }
  
  void top(){
    if(y < r){
      y = r;
    
    }
  
  }
  

}

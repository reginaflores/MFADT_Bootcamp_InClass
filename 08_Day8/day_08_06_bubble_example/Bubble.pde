//what it means to be a bubble
class Bubble{
  
  //define the data
  //these are global to the class
  float x;
  float y;
  float r;   
  
  //these x_ variables are just temp variables. 
  // they are received from the the main and are passed into the
  //constructor
  Bubble(float x_, float y_, float r_){
    //note these are local to the constructor
    x = x_;
    y = y_;
    r = r_;
    
  }
  
 // boolean overlaps(Bubble other){
 //   float d = dist(x, y, other.x, other.y);
 //   if(d < r + other.r){
 //     return true;
 //   } else{
 //     return false;
 //   }
 // } 
  
  void ascend(){
    y--;
  }
  
  void display(){
    stroke(0);
    strokeWeight(10);
    fill(127,100);
    ellipse(x,y,2*r,2*r);
  }
  
  void top(){
    if(y < r){
      y = r;
    
    }
  
  }
  

}

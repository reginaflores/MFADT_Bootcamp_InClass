//what it means to be a bubble
class Bubble{
  
  //define the data
  //these are global to the class
  float x;
  float y;
 
  //constructor
  Bubble(){
    x = width/2;
    y = height;
    
  }
  
  //fuctions
  void ascend(){
    y--;
  }
  
  void display(){
    stroke(0);
    strokeWeight(10);
    fill(127,100);
    ellipse(x,y,64,64);
  }
  
  // void top(){
  //   if(y < r){
  //     y = r;
    
  //   }
  
  }
  

// }

class CheapEats {
  //Data
  String placesName;
  String placesUrl;
  String price;
  int nReviews;
  String cuisineCategory;
  String cuisineUrl;
  float radius;

  float h, s, b;
  float bubbleSize;
  float tempBubbleSize;
  PVector pos;

  float angle = random (0, 2*PI);
  float hypo;

  // constructor
  CheapEats(String _placesName, String _placesUrl, String _price, int _nReviews, String _cuisineCategory, String _cuisineUrl, float _radius) {
    placesName = _placesName;
    placesUrl = _placesUrl;
    price = _price;
    nReviews = _nReviews;
    cuisineCategory = _cuisineCategory;
    cuisineUrl = _cuisineUrl;
    radius = _radius;
    
    bubbleSize = calculateBubbleSize(nReviews);

    hypo = 810*radius;
    pos = new PVector(cos(angle)*hypo, hypo*sin(angle));
    
    //////////////////////////////////////////////////
    //assigning colors, just changing hue
    if (cuisineCategory.equals("Sandwiches")) {
      h = 0; //red
    } else if (cuisineCategory.equals("Pizza")) {
      h = 20;
    } else if (cuisineCategory.equals("Coffee & Tea")) {
      h = 40;
    } else if (cuisineCategory.equals("Delis")) {
      h = 60;
    } else if (cuisineCategory.equals("Japanese")) {
      h = 80;
    } else if (cuisineCategory.equals("Burgers")) {
      h = 100;
    } else if (cuisineCategory.equals("American (New)")) {
      h = 120;
    } else if (cuisineCategory.equals("Food Stands")) {
      h = 140;
    } else if (cuisineCategory.equals("Ice Cream & Frozen Yogurt")) {
      h = 160;
    } else if (cuisineCategory.equals("Italian")) {
      h = 180;
    } else if (cuisineCategory.equals("Juice Bars & Smoothies")) {
      h = 200;
    } else if (cuisineCategory.equals("Mexican")) {
      h = 220;
    } else if (cuisineCategory.equals("Bakeries")) {
      h = 240;
    } else if (cuisineCategory.equals("Falafel")) {
      h = 260;
    } else if (cuisineCategory.equals("Chocolatiers & Shops")) {
      h = 280;
    } else if (cuisineCategory.equals("Asian Fusion")) {
      h = 300;
    } else if (cuisineCategory.equals("Thai")) {
      h = 320;
    } else if (cuisineCategory.equals("Vegetarian")) {
      h = 340;
    } else {
      
      h = 360; 
      s = 0; 
      b = 50;
    }
    s = 255;
    b = 255;
    ///////////////////////////////////////////
    
  }
  //////////////////////////////////
  float calculateBubbleSize(int area){
    float r = sqrt(area/PI);
    return myScale*r;
  }  
//////////////////////////////////
  boolean isHovering() {
    float distance = dist(mouseX, mouseY, pos.x +  width/2, pos.y + height/2);
    if (distance < bubbleSize/2) {
      return true;
    } else {
      return false;
    }
  }
//////////////////////////////////
  void update() {
    //make the bubble grow
    if (tempBubbleSize < bubbleSize) {
      tempBubbleSize += 1;
    }
  }
//////////////////////////////////
  void display() {
    update();
    float _b = b;
    fill(h, s, _b);
    noStroke();
    strokeWeight(0);
    stroke(204, 102, 0);
    ellipse(pos.x, pos.y, tempBubbleSize, tempBubbleSize); 
  }
}
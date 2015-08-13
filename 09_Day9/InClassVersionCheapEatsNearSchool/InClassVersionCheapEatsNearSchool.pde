
PImage bg;
boolean record;
float myScale;
ArrayList <CheapEats> myCheapEats;

void setup() {
  size(1280, 720);
  bg = loadImage("small_bg3.png");
 
  colorMode(HSB, 360, 100, 100);
  // this is the scale of the bubble radius
  myScale = 2.5;
  myCheapEats = new ArrayList <CheapEats>();

  //load the datasets
  String[] wholeData = loadStrings("data/CheapEatsNearSchool.tsv");
  //parse the .TSV file, see below function
  splitData(wholeData);

  smooth();
}

void splitData(String[] myArray) {
  for (int i = 0; i < myArray.length; i++) {
    String myRow = myArray[i];         

    //TSV is Tab Separated Value document, so we split them into columns based on 
    //values that are separated by tabs, or \t (as computer understands it)
    String[] columns = split(myRow, "\t");

    //breaking down all 7 columns
    String placesName = trim(columns[0]);
    String placesUrl = trim(columns[1]);
    String price = trim(columns[2]);
    int nReviews = parseInt(trim(columns[3]));
    String cuisineCategory = trim(columns[4]);
    String cuisineUrl = trim(columns[5]);
    float radius = parseFloat(trim(columns[6]));

    //instantiating new temporary object of CheapEats class, and add them one by one to 
    //myCheapEats ArrayList.
    CheapEats tempGraph = new CheapEats(placesName, placesUrl, price, nReviews, cuisineCategory, cuisineUrl, radius);
    myCheapEats.add(tempGraph);
  }
}
//////////////////////////////////
void draw() {
  background(bg);
  translate(width/2, height/2);

  drawRadius();
  for (int i=0; i <myCheapEats.size (); i++) {
    myCheapEats.get(i).display();
  }
}
//////////////////////////////////
void drawRadius() {
  for (int i = 0; i < myCheapEats.size (); i++) {
    noFill();
    strokeWeight(3);
    stroke(240);

    //changing the scale number will affect the orbit (inner circle) radius    
    ellipse(0, 0, myCheapEats.get(i).radius*1620, myCheapEats.get(i).radius*1620);
  }
}
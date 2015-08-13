int total = 100;
PVector location = new PVector(width/2, height/2);

Particle[] pArray = new Particle[total];

//This is what we’re used to, accessing elements on the 
//array via an index and brackets—[ ].
void setup() {
  size(500,500);
  for (int i = 0; i < pArray.length; i++) {
    pArray[i] = new Particle(location);
  }
}


void draw() {
  background(255);
  for (int i = 0; i < pArray.length; i++) {
    //Particle p = parray[i];
    pArray[i].run();
  
  }
}
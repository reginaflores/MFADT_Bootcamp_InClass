// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com


//Have you ever seen this syntax before? 
//This is a new feature in Java 1.6 (called "generics") 
//that Processing now supports. It allows us to specify in 
//advance what type of object we intend to put in the ArrayList.

//declare arraylist of Particle objects
ArrayList<Particle> particles;

void setup() {
  size(640,360);
  //intialize arraylist by calling constructor
  particles = new ArrayList<Particle>();
    
}

void draw() {
  background(255);
         
  // An object is added to an ArrayList with add().
  particles.add(new Particle(new PVector(width/2,50)));
    
    //for every particle in the array list p update and display
    //for(Particle p : particles){
      for(int i = 0; i < particles.size(); i++){
    //Particle p = particles.get(i);
      particles.get(i).run();
      
  }
}
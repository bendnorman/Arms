class ArmCollection {
  int number = 0;
  Arm[] collection;
  PVector position = new PVector(0,0);
  
 ArmCollection(int n, PVector p) {
  number = n; 
  position = p;
  collection = new Arm[number];
 }
  
  void update() {
   for (int i = 0; i < collection.length; i++) {
      collection[i].update(); 
   }
    
  }
  
  void display() {
    for (int i = 0; i < collection.length; i++) {
      collection[i].display(); 
   }
    
  }
  
  PVector getPosition() {
   return position; 
    
  }
  
  
}
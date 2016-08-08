Arm[] arms;
int number = 10;

void setup() {
  size(1200,700);
  PVector position = new PVector(width/2,height/2);
  arms = new Arm[number];
  arms[0] = new Arm(position,null);
  
  for (int i = 1; i < arms.length; i++) {
      arms[i] = new Arm(position,arms[i-1]);
    
  }
  
  background(255);
}

void draw() {
  //background(255);
  for (int i = 0; i < arms.length; i++) {
    arms[i].update();
    arms[i].display();
    
    
  }  
  
  arms[arms.length-1].display();
}
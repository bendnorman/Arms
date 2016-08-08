class Arm {

  PVector anchor = new PVector(0, 0);
  PVector position = new PVector(0, 0);
  float radius = random(20, 80);

  float angle = 0;
  float bound = random(TWO_PI);
  Arm parent;
  float frequency = random(0.01, 0.1);
  color c = color(random(255),random(255),random(255),100);

  Arm(PVector p, Arm par) {
    anchor = p; 
    parent = par;
  }


  void display() {
    stroke(0,10);
    line(anchor.x, anchor.y, position.x, position.y);
    fill(c);
    noStroke();
    smooth();
    ellipse(position.x, position.y, 6, 6);
  }

  void update() {
    if (parent != null) {
      anchor = parent.getPosition();
    }

    
      angle+=frequency; 

    position.x = anchor.x + radius * cos(angle);
    position.y = anchor.y + radius * sin(angle);
  }

  PVector getPosition() {

    return position;
  }
}
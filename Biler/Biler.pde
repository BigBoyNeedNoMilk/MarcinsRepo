ellipse circ1;
ellipse circ2;
ellipse circ3;

void setup(){
  size(640, 360);
  circ1 = new ellipse(color(255, 0 ,0), 0, 90, 5);
  circ2 = new ellipse(color(0, 255, 0), 40, 180, 5);
  circ3 = new ellipse(color(0, 0, 255), 80, 270, 5);
}

void draw(){
  background(255);
  circ1.move();
  circ1.display();
  circ2.move();
  circ2.display();
  circ3.move();
  circ3.display();
}

class ellipse {
  color c;
  float xpos;
  float ypos;
  float xspeed;
  
  ellipse(color tempC, float tempXpos, float tempYpos, float tempXspeed) {
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
  }
  
  void display() {
    stroke(0);
    fill(c);
    ellipseMode(CENTER);
    ellipse(xpos, ypos, 30, 20);
  }
  
  void move() {
    xpos = xpos + xspeed;
    if (xpos == width || xpos == 0) {
     xspeed = xspeed * -1; 
    }
  }
}

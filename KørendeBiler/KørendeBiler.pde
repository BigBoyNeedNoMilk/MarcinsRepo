rect rect1;
rect rect2;
rect rect3;

void setup(){
  size(640, 360);
  rect1 = new rect(color(255, 0 ,0), 0, 100, 5);
  rect2 = new rect(color(0, 255, 0), 10, 200, 5);
  rect3 = new rect(color(0, 0, 255), 20, 300, 5);
}

void draw(){
  background(255);
  rect1.move();
  rect1.display();
  rect2.move();
  rect2.display();
  rect3.move();
  rect3.display();
}

class rect {
  color c;
  float xpos;
  float ypos;
  float xspeed;
  
  rect(color tempC, float tempXpos, float tempYpos, float tempXspeed) {
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
  }
  
  void display() {
    stroke(0);
    fill(c);
    rectMode(CENTER);
    rect(xpos, ypos, 20, 10);
  }
  
  void move() {
    xpos = xpos + xspeed;
    if (xpos == width || xpos == 0) {
     xspeed = xspeed * -1; 
    }
  }
}

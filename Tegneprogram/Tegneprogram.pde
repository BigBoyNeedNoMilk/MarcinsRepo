void setup(){
  size(800, 600);
  background(255);
  strokeWeight(1);
  line(0, 0, 800, 0);
  line(650, 0, 650, 600);
  
  rectMode(CORNER);
  fill(255);
  noStroke();
  rect(651, 1, 150, 600);
  
  rectMode(CENTER);
  
    fill(255, 0, 0);
    noStroke();
  rect(725, 75, 70, 70);
    
    fill(0, 225, 0);
    noStroke();
  rect(725, 225, 70, 70);
    
    fill(0, 0, 255);
    noStroke();
  rect(725, 375, 70, 70);
  
    fill(0, 0, 0);
    noStroke();
  rect(725, 525, 70, 70);
}


void draw(){
      
    stroke(0);  
  
    if ((mousePressed == true) && (mouseX > 690 & mouseX < 760) && (mouseY > 40 & mouseY < 115)){
      stroke(255, 0, 0);
    }
    
    if ((mousePressed == true) && (mouseX > 690 & mouseX < 760) && (mouseY > 190 & mouseY < 260)){
      stroke(0, 255, 0);
    }
    
    if ((mousePressed == true) && (mouseX > 690 & mouseX < 760) && (mouseY > 340 & mouseY < 410)){
      stroke(0, 0, 255);
    }
 
 if (mouseX < 650){
    if (mousePressed){
      strokeWeight(10);
      line(pmouseX, pmouseY, mouseX, mouseY);
      
    }
 }else{
 }
}

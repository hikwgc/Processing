int diam = 10;
float centX, centY;
int mode = 1;


void setup() {
  size(1000, 600);
  frameRate(24);
  smooth();
  background(180);
  centX = width/2;
  centY = height/2;
  stroke(0);
  strokeWeight(2);
  fill(255,25);
}

void draw() {
  if (diam <= 400) {
    //background(180);
    
    strokeWeight(2);
    fill(255, 25);
    ellipse(centX, centY, diam, diam);

    strokeWeight(0);
    noFill();
    int tempdiam = diam;
    while(tempdiam > 10) {
      ellipse(centX, centY, tempdiam, tempdiam);
      tempdiam -= int(random(10));
    } 

    int randomNum = int(random(10));
    centX += mode * randomNum;
    centY += mode * randomNum * -1;
    if (mode > 0) {
      randomNum += 1;
    }
    diam += mode * randomNum;
    mode *= -1;
    
  }
  else {
    diam = 10;
  } 
  
  //keyPressed();
}

void keyPressed() {
  if (keyCode == ENTER) {
    saveFrame("screen-####.jpg");
  }
}

void addNewEllipse() {
}

void drawEllipses() {   
}

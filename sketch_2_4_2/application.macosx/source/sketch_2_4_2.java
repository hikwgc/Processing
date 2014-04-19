import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class sketch_2_4_2 extends PApplet {

int diam = 10;
float centX, centY;
int mode = 1;


public void setup() {
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

public void draw() {
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
      tempdiam -= PApplet.parseInt(random(10));
    } 

    int randomNum = PApplet.parseInt(random(10));
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

public void keyPressed() {
  if (keyCode == ENTER) {
    saveFrame("screen-####.jpg");
  }
}

public void addNewEllipse() {
}

public void drawEllipses() {   
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--full-screen", "--bgcolor=#666666", "--stop-color=#cccccc", "sketch_2_4_2" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

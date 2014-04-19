import processing.opengl.*;

float xstart, xnoise, ystart, ynoise;

void setup() {
  size(500,300,OPENGL);
  background(0);
  sphereDetail(8);
  noStroke();

  xstart = random(10);
  ystart = random(10);
}

void draw() {
  background(0);
  xstart += 0.01;
  ystart += 0.01;
  
  xnoise = xstart;
  ynoise = ystart;
  
  for (int y = 0; y <= height; y += 5) {
    ynoise += 0.1;
    xnoise += xstart;
    for (int x= 0; x <= width; x += 5) {
      xnoise += 0.1;
      drawRotatePoint(x, y, noise(xnoise, ynoise));
    }
  }
}

void drawPoint(float x, float y, float noiseFactor) {
  float len = 7 * noiseFactor;
  rect(x, y, len, len);
}

void drawRotatePoint(float x, float y, float noiseFactor) {
  pushMatrix();

  translate(x, 250-y, -y);
  rotate(noiseFactor * radians(540));
  noStroke();
  fill(noiseFactor*255, noiseFactor*255);
  sphere(noiseFactor*20);
  popMatrix();
}

void drawRotateLine(float x, float y, float noiseFactor) {
  pushMatrix();
  translate(x, y);
  rotate(noiseFactor * radians(360));
  stroke(0, 150);
  line(0,0,20,0);
  popMatrix();
}

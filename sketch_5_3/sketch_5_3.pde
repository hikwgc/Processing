float xstart, xnoise, ystart, ynoise;
float xstartNoise, ystartNoise;

void setup() {
  size(300, 300, OPENGL);
  //frameRate(24);
  smooth();
  background(255);
  xstartNoise = random(20);
  ystartNoise = random(20);
  
  xstart = random(10);
  ystart = random(10);
}

void draw() {
  background(255);
  
  xstartNoise += 0.01;
  ystartNoise += 0.01;
  xstart = (noise(xstartNoise) * 0.5) - 0.25;
  ystart = (noise(ystartNoise) * 0.5) - 0.25;
  xnoise = xstart;
  ynoise = ystart;

  for (int y = 0; y <= height; y += 5) {
    ynoise += 0.1;
    xnoise += xstart;
    for (int x= 0; x <= width; x += 5) {
      xnoise += 0.1;
      drawRotateLine(x, y, noise(xnoise, ynoise));
    }
  }
}

void drawPoint(float x, float y, float noiseFactor) {
  float len = 7 * noiseFactor;
  rect(x, y, len, len);
}

void drawRotatePoint(float x, float y, float noiseFactor) {
  pushMatrix();

  translate(x, y);
  rotate(noiseFactor * radians(540));
  noStroke();
  fill(noiseFactor*255, noiseFactor*255);
  ellipse(0,0,noiseFactor*20,noiseFactor*10);
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

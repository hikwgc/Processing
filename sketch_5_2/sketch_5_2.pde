float xstart, xnoise, ynoise;
float lastx, lasty;

void setup() {
  size(300, 300);
  smooth();
  background(0);
  xstart = random(10);
  xnoise = xstart;
  ynoise = random(10);

  for (int y = 0; y <= height; y+=5) {
    ynoise += 0.1;
    xnoise  = xstart;
    for (int x = 0; x <= width; x+=5) {
      xnoise += 0.1;
      //drawPoint(x, y, noise(xnoise, ynoise));
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

  translate(x, y);
  rotate(noiseFactor * radians(540));
  noStroke();
  fill(noiseFactor*255, noiseFactor*255);
  ellipse(0,0,noiseFactor*20,noiseFactor*10);
  lastx = x;
  lasty = y;
  popMatrix();
}

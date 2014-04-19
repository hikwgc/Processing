size(300, 300);
smooth();
background(255);
float xstart = random(10);
float xnoise = xstart;
float ynoise = random(10);

for (int y = 10; y <= height-10; y+=2) {
  ynoise += 0.01;
  xnoise  = xstart;
  for (int x = 10; x <= width-10; x+=2) {
    xnoise += 0.01;
    int alph = int(noise(xnoise, ynoise) * 255);
    stroke(0, alph);
    line(x, y, x+5, y+5);
  }
}

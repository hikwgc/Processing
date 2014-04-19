int   step   =   3;
float lastx  = -999;
float lasty  = -999;
float y      = 384;
float ynoise = random(10);
int   borderx =  20;
int   bordery = 384;
int x = borderx;

void setup() {
size(1024, 768);
background(225);
strokeWeight(5);
smooth();

stroke(0,30);
/*
line(20,height/2,width-20,height/2);

stroke(20,50,70);
float randx = random(width);
float randy = random(height);
line(20, height/2, randx, randy);
*/
}
/*
for (int x = borderx; x <= width - borderx; x += step) {
  y = bordery + noise(ynoise) * 80;
  if (lastx > -999) {
    line(x, y, lastx, lasty);
  }
  lastx = x;
  lasty = y;
  ynoise += 0.03;
  //step += int(random(10)-5);
}
*/
void draw() {
  //println(y);
  //println(bordery);
  if (x <= width - borderx) {
    y = bordery + noise(ynoise) * 80 * customRandom();
    if (lastx > -999) {
      line(x, y, lastx, lasty);
    }
    lastx = x;
    lasty = y;
    ynoise += 0.03;
    x += step;
    //step += int(random(10)-5);
  }
  else {
    x = borderx;
    bordery = int(random(height));
    lastx  = -999;
  }
}


float customRandom() {
  return 1 - pow(random(1), 8);
}

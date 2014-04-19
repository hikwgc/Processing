  float lastx = -999;
  float lasty = -999;
  float radiusNoise = random(10);
  float radius = 10;
  
  int startangle = int(random(360));
  int endangle   = int(random(1440));
  int anglestep  = 5 + int(random(3));

  int ang = startangle;

void setup() {
  size(1024, 768);
  background(255);
  strokeWeight(1);
  smooth();

  stroke(random(250), random(250), random(250), 80);

}

void draw() {  
  int centx = width/2;
  int centy = height/2;
  float x, y;
  
  //for (float ang = startangle; ang <= endangle; ang += anglestep) {
  if ( ang <= endangle ) {
    radius += 0.5;
    float thisRadius = radius + (noise(radiusNoise) * 200) - 100;
    float rad = radians(ang);
    x = centx + (thisRadius * cos(rad));
    y = centy + (thisRadius * sin(rad));
    if (lastx > -999) {
      line(x, y, lastx, lasty);
    }
    lastx = x;
    lasty = y;
    radiusNoise += 0.05;
    ang += anglestep;
  }
  else {
    println("wow");
    startangle = int(random(360));
    endangle   = int(random(1440));
    anglestep  = 5 + int(random(3));
    ang = startangle;
    stroke(random(250), random(250), random(250), 80);
    lastx = -999;
    lasty = -999;
    radiusNoise = random(10);
    radius = 10;
  }
}

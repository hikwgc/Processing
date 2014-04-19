size(500, 300);
background(255);
strokeWeight(5);
smooth();

float radius= 100;
int centx = 250;
int centy = 150;

stroke(0,30);
noFill();
ellipse(centx,centy, radius*2, radius*2);

radius = 10;
stroke(20,50,70);
float x, y;
float lastx = -999;
float lasty = -999;
float radiusNoise = random(10);

for (float ang = 0; ang <=1800; ang += 5) {
  float rad = radians(ang);
  radius += 0.5;
  float thisRadius = radius + (noise(radiusNoise) * 200) - 100;
  x = centx + (thisRadius * cos(rad));
  y = centy + (thisRadius * sin(rad));
  point(x,y);
  radiusNoise += 0.05;
}

  


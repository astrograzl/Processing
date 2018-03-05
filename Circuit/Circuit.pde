void setup() {
  size(800, 600);
  frameRate(3);
  stroke(42);
  strokeWeight(2);
  rectMode(CENTER);
}

final int min = 8;
final int max = 64;
int end = 96;

float s;
float x, x0;
float y, y0;
float r, g, b;

void draw() {
  if (end++ == 96) {
    end = 0;
    delay(3000);
    x = width/2;
    y = height/2;
    fill(255);
    background(255);
    rect(x, y, 25, 25);
  }

  x0 = x;
  y0 = y;
  
  r = random(255);
  g = random(255);
  b = random(255);
  
  s = random(min, max);
  
  if (random(2) < 1) {
    x = random(max, width-max);
  } else {
    y = random(max, height-max);
  }

  fill(r, g, b);
  line(x0, y0, x, y);
  ellipse(x, y, s, s);
}
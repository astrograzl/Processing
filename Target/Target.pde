void setup() {
  size(800, 600);
  frameRate(25);
}

int t = 555;
int hit = 25;

void draw() {
  translate(width/2, height/2);
  if (hit == 25) {
    delay(3000);
    background(192);
    terc(t/10);
    hit = 0;
  }
  if (frameCount % 5 == 0 && strela(32)) hit++;
}

void terc(int r) {
  stroke(42);
  strokeWeight(2);
  for (int i = 10; i > 0; i -= 1) {
    if (i % 2 == 0) {
      fill(255);
    } else {
      fill(0);
    }
    ellipse(0, 0, i*r, i*r);
  }
}

boolean strela(int r) {
  noStroke();
  float x = random(-width/2, width/2);
  float y = random(-height/2, height/2);
  if (sqrt(sq(x)+sq(y)) < t/2) {
    fill(255, 0, 0);
    ellipse(x, y, r, r);
    return true;
  } else {
    fill(128);
    ellipse(x, y, r, r);
    return false;
  }
}
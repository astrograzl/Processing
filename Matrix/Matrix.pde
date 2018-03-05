void setup() {
  fullScreen();
  //size(1920, 1080);
  stroke(255);
  strokeWeight(2);
  background(255);
  init(a);
}

int a = 20;

void draw() {
  float x = random(width); x -= x % a;
  float y = random(height); y -= y % a;
  
  float r = random(255);
  float g = random(255);
  float b = random(255);
  
  fill(r, g, b);
  rect(x, y, a, a);
}

void init(int a) {
  for (int x = 0; x < width; x += a) {
    for (int y = 0; y < height; y += a) {
      float r = random(255);
      float g = random(255);
      float b = random(255);
      fill(r, g, b);
      rect(x, y, a, a);
    }
  }
}
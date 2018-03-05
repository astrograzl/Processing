void setup()
{
  size(960, 960);
  background(0);
  noStroke();
}

int s;
int p = 0;
float clr;
final int r = 2;
final int a = 900;
final float v = a * sqrt(3) / 2;
final float X[] = {-a/2, a/2, 0};
final float Y[] = {v/2, v/2, -v/2};
float x = random(-a/2, a/2);
float y = random(-v/2, v/2);
float[] rgb = new float[3];

void draw()
{
  translate(width/2, height/2);
  s = int(random(3));
  x = x + (X[s] - x) / 2;
  y = y + (Y[s] - y) / 2;
  for (int i = 0; i < 3; i++) {
    clr = sqrt(sq(X[i] - x) + sq(Y[i] - y));
    rgb[i] = map(clr, 0, v, 0, 255);
  }
  fill(rgb[0], rgb[1], rgb[2]);
  ellipse(x, y, r, r);
  println(p++);
}
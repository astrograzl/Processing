void setup()
{
  size(960, 720, P3D);
  strokeWeight(5);
  background(0);
}

float a = 10, b = 8/3, c = 28;
float x = -1, y =   1, z = 0;
float t = 0, dt = 0.01;
float red, gre, blu;
float s = 7;

void mouseClicked() {saveFrame();}

void draw()
{
  translate(width/2, height/2);
  rotateX(t); rotateY(t); rotateZ(t);

  x += (a * (y - x)    ) * dt;
  y += (x * (c - z) - y) * dt;
  z += (x *  y - b  * z) * dt;

  red = map(x, -10, 10, 0, 255);
  gre = map(y, -10, 10, 0, 255);
  blu = map(z,  20, 40, 0, 255);

  stroke(red, gre, blu, 96);
  point(x*s, y*s, z*s);

  t += dt;
}

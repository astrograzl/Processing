void setup()
{
  fullScreen(P2D);
  //size(960, 960, P2D);
  background(192);
  noStroke();
  init();
}

final int a = 15;
final int n = 50;
one[] ones = new one[n];

void init()
{
  for (int i = 0; i < n; i++)
      ones[i] = new one(a);
}

void draw()
{
  for (one o: ones) o.step();
  //saveFrame("progresso-C-######.png");
  //if (frameCount == 10000) exit();
  //println(frameCount);
}

class one
{
  int a; color c;
  int x = width / 2;
  int y = height / 2;

  one(int size)
  {
    a = size;
    int r = int(random(256));
    int g = int(random(256));
    int b = int(random(256));
    c = color(r, g, b, 128);
    //c = color(g, 128);
  }

  void step()
  {
    int s = round(random(1));
    int d = floor(random(3)) - 1;
    if (s == 0) {
      x += a * d;
      if (x < 0) x += width;
      if (x >= width) x -= width;
    } else {
      y += a * d;
      if (y < 0) y += height;
      if (y >= height) y -= height;
    }
    fill(c); rect(x, y, a, a);
  }
}
class Limb {

  int r;
  float a;
  float x, y;
  float dt;
  float o;

  Limb(int rr, float aa)
  {
    r = rr;
    a = aa;
    o = aa;
  }

  void update()
  {
  }

  void show()
  {
    update();
    for (int i = 0; i < 15; i++) {
      float dx = random(-25, 25);
      float dy = random(-10, 10);
      float dw = random(-15, 15);
      float dh = random(-15, 15);
      bezier(0+dx, -275+dy, 0+dw, 0+dh, 0+dw, 0+dh, x+dx, y+dy);
    }
  }
}

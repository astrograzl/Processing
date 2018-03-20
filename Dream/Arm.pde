class Arm extends Limb {

  Arm(int rr, float aa)
  {
    super(rr, aa);
    dt = 0.5;
  }

  void update()
  {
    if (o < a - 25 || o > a + 25) dt *= -1;
    x = r * cos(radians(o));
    y = r * sin(radians(o));
  }
}

class Leg extends Limb {

  Leg(int rr, int aa)
  {
    super(rr, aa);
    dt = 1;
  }

  void update()
  {
    o += dt;
    if (abs(o) > abs(a)) dt *= -1;
    x = r * cos(radians(90-o));
    y = r * sin(radians(90-o));
  }
}

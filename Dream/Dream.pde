void setup()
{
  size(960, 960);
  frameRate(10);
  background(192);
  strokeWeight(2);
  stroke(64, 96);
  noFill();
}

Head head = new Head();
Limb rarm = new Arm(300, -45);
Limb larm = new Arm(300, 175);
Limb rleg = new Leg(400, 20);
Limb lleg = new Leg(400, -20);

void draw()
{
  background(252, 252, 212);
  translate(width/2, height/2);
  head.show();
  rarm.show();
  larm.show();
  rleg.show();
  lleg.show();
}

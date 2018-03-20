void setup()
{
  size(960, 960);
  frameRate(10);
  strokeWeight(2);
  stroke(64, 96);
  noFill();
  create();
}

Head head = new Head();
Limb[] body = new Limb[4];

void draw()
{
  background(252, 252, 212);
  translate(width/2, height/2);
  head.show();
  for (Limb limb : body)
    limb.show();
  //saveFrame("dream-#####.png");
  //if (frameCount == 200) exit();
}

void create()
{
  body[0] = new Arm(300, -45);
  body[1] = new Arm(300, 175);
  body[2] = new Leg(400, 20);
  body[3] = new Leg(400, -20);
}

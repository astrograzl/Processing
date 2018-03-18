class Head {

  final int x = 0;
  final int y = -350;
  
  void show()
  {
    for (int i = 0; i < 30; i++) {
      float dx = random(-5, 5);
      float dy = random(-5, 5);
      float dw = random(-5, 5);
      float dh = random(-5, 5);
      ellipse(x+dx, y+dy, i*5+dw, i*5+dh);
    }
  }

}

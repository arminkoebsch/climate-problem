
class Wave {

  float x, y, f, w, s;
  Wave () {
    x = random(0, 600);
    y = random(450, 650);
    f = 0;
    w = 10;
  }

  void show() {
    stroke(#9FE0EA, f);
    strokeWeight(5);
    line(x-random(2, 6)-w, y, x+random(2, 6)+w, y);
  }

  void act() {
    y = y - (y - 300)/100;
    w = w + 1;
    f = f + 3;
    stroke(#9FE0EA, f);
    strokeWeight(5);
    line(x-random(2, 6)-w, y, x+random(2, 6)+w, y);
  }

  void respawn() {
    if (y < 400) {
      x = random(0, 620);
      y = random(500, 600);
      f = 0;
      w = 10;
    }
  }
}

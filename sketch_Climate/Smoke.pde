
class Smoke {

  float x, y, s, b;
  Smoke() {
    x = random(0, 600);
    y = random(0, 300);
    s = 20;
    b = 0;
  }

  void show() {
    noStroke();
    fill(#C4C4C4, 100);;
    ellipse(x, y, s, s/2);
  }

  void act() {
    y = y-2;
    x = x+random(-5, 5);
    s = s+1;
  }


  void respawn() {
    if (y<-200) {
      x = random(0, 600);
      y = random(0, 300);
      s = 20;
    }
  }
}


class Tree {

  float x;
  Tree () {
    x = random(0, 600);
  }

  void show() {
    fill(#836D41);
    rect(x-5, treeline+random(-5, 5), 10, 20);
  }
}


Tree[] trees;
Wave[] waves;
Fire[] flames;
Smoke[] smokes;
int w = 50;
int wn = 10;
int tn = 60;
int fn = 30;
float treeline = 300;
float fireline = 300;

void setup() {

  size(600, 600);
  waves = new Wave[wn];
  int i = 0;
  while (i < wn) {
    waves[i] = new Wave();
    i++;
  }
  trees = new Tree[tn];
  i = 0;
  while (i < tn) {
    trees[i] = new Tree();
    i++;
  }
  flames = new Fire[fn];
  i = 0;
  while (i < fn) {
    flames[i] = new Fire();
    i++;
  }
}


void draw() {

  noStroke();
  fill(#86782F);
  rect(0, 0, 600, 600);//dirt
  fill(#E8D054);
  rect(0, 350, 600, 600);//sand
  fill(#0375FC);
  rect(0, 400, 600, 600);//water

  int i = 0;
  while (i < wn) {
    waves[i].act();
    waves[i].show();
    waves[i].respawn();
    i++;
  }

  i = 0;
  treeline = 25;
  while (i < tn-40) {
  trees[i].show();//top treeline
  i++;
  treeline = treeline + 4;
  }

  i = 0;
  fireline = 25;
  while (i < fn-20) {
    flames[i].show();//top fireline
    flames[i].act();
    i++;
    fireline = fireline + 8;
  }

  i = 20;
  treeline = 100;
  while (i < tn-20) {
  trees[i].show();//middle treeline
  i++;
  treeline = treeline + 4;
  }

  i = 10;
  fireline = 100;
  while (i < fn-10) {
    flames[i].show();//middle fireline
    flames[i].act();
    i++;
    fireline = fireline + 8;
  }

  i = 40;
  treeline = 200;
  while (i < tn) {
  trees[i].show();//bottom treeline
  i++;
  treeline = treeline + 4;
  }
  
  i = 20;
  fireline = 200;
  while (i < fn) {
  flames[i].show();//bottom fireline
  flames[i].act();
  i++;
  fireline = fireline + 8;
  }
}

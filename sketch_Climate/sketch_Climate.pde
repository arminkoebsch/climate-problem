
Tree[] trees;
Wave[] waves;
int w = 50;
int wn = 10;
int tn = 10;
int treeline = 300;

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
  while (i < wn) {
    
    i++;
  }
}

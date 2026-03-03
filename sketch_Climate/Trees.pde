
class Tree {

  float x, y;
  Tree () {
    x =  random(0, 600);
    y = -10;
  }

  void show() {
    if (y < 0){
      y = treeline;
    }
    pushMatrix();
    translate(x, y);
    
    scale((350+y)/500);
    fill(#B78A46);
    stroke(#815F2C);
    rect(-15, 0, 30, 45);//trunk
    
    fill(#1F7933);
    stroke(#246231);
    triangle(-25, +2, +25, +2, 0, -50);//leaves
    
    popMatrix();
  }
  

}

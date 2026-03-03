
class Fire {

  float x, y, s;
  Fire () {
    x =  random(0, 600);
    y = -10;
    s = random(-.1, .1);
  }

  void show() {
    if (y < 0) {
      y = fireline;
    }
    pushMatrix();
    translate(x, y);
    scale(((350+y)/600)+s);
    
    noStroke();
    fill(#FF0000);
    circle(0, 0, 50);
    triangle(-25, 0, +25, 0, 0, -50);//red
    
    fill(#FFB005);
    circle(0, 0, 35);
    triangle(-18, 0, +18, 0, 0, -30);//orange
    
    fill(#FFF305);
    circle(0, 0, 20);
    triangle(-7, 0, +7, 0, 0, -20);//orange
    
    popMatrix();
  }
  
    void act(){
    s = random(-.1, .1);
  }
}

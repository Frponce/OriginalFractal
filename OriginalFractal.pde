

public void setup() {
  size(500, 500);
  rectMode(CENTER);
}
public void draw() {
  background(0);
  color c1 = color(255, 0, 0);
  color c2 = color(0, 0, 200);
  myFractal(width / 2, height / 2, 200, c1, c2);
}
public void myFractal(int x, int y, int siz, color c1, color c2) {
  float d = dist(x, y, width / 2, height / 2);  
  color c = lerpColor(c1, c2, d / (width / 2)); 

  noStroke();
  fill(c);
  rect(x, y, siz, siz);

  if (siz > 5) {

    myFractal(x - siz / 2, y + siz / 2, siz / 2, c1, c2);
    myFractal(x + siz / 2, y + siz / 2, siz / 2, c1, c2);
    myFractal(x + siz / 2, y - siz / 2, siz / 2, c1, c2);
    myFractal(x - siz / 2, y - siz / 2, siz / 2, c1, c2);
  }
}

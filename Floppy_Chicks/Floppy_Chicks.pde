int birdY = 200;
double birdYSpeed = 0;
pipes p1 = new pipes ();
pipes p2 = new pipes ();
pipes p3 = new pipes ();
pipes p4 = new pipes ();
void setup () {
  size(1000, 500);
  // random units 175 - 325
  p1.x = 1300;
  p1.y = (int) random(175, 325);
  p2.x = 1600;
  p2.y = (int) random(175, 325);
  p3.x = 1900;
  p3.y = (int) random(175, 325);
  p4.x = 2200;
  p4.y = (int) random(175, 325);
}

class pipes {

  public int x;
  public int y;
  void draw () {
    fill(0, 255, 0);
    rect(x, y, 50, 10000);
    rect(x-12.5, y-25, 75, 25);

    rect(x-12.5, y-150, 75, 25);
    rect(x, y-150, 50, -10000);
    x-=2;
  }
}

void draw () {
  background(44, 227, 242);
  p1.draw();
  p2.draw();
  p3.draw();
  p4.draw();

  if (p1.x < - 75) {
    p1.x = p4.x + 300;
  }
  if (p2.x < - 75) {
    p2.x = p1.x + 300;
  }
  if (p3.x < - 75) {
    p3.x = p2.x + 300;
  }
  if (p4.x < - 75) {
    p4.x = p3.x + 300;
  }
  fill(227, 195, 78);
  rect(0, 400, 1000, 100);
  fill(15, 216, 70);
  rect(0, 350, 1000, 50);
 
  fill(255, 255, 0); 
  ellipse(100, birdY, 25, 25);
  birdY += birdYSpeed;
  birdYSpeed += .2;
  if(mousePressed){
   birdYSpeed = -4; 
  }
}
void mousePressed () {

}
class Star //note that this class does NOT extend Floater
{
  //your code here
  double myX, myY;
  int myColor;
  Star() {
    myX = Math.random() * 1000;
    myY = Math.random() * 1000;
  	myColor = color(Math.random()*255, Math.random()*255, Math.random()*255);
  }
  public void show() {
    fill(myColor);
    ellipse(myX, myY, 8, 8);
  }

class Star //note that this class does NOT extend Floater
{
  protected int myX, myY;
  protected int myColor;

  Star(){
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    myColor = (int)(Math.random()*50 + 200);
  }
  
  public void show(){
    ellipse((int)(myX),(int)(myY),5,5);
  }
}

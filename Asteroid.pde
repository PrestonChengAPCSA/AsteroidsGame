public class Asteroid extends Floater {
  protected double rotationSpeed;
  public Asteroid(){
    myColor = 255;
    rotationSpeed = Math.random()*10;
    corners = 6;
    xCorners =  new int[corners];
    yCorners = new int[corners];
    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500;
    myXspeed = Math.random()*1 + 1;
    myYspeed = Math.random()*1 + 1;   
    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500;
    xCorners[0] = -11;
    yCorners[0] = -8;
    xCorners[1] = 7;
    yCorners[1] = -8;
    xCorners[2] = 13;
    yCorners[2] = 0;
    xCorners[3] = 6;
    yCorners[3] = 10;
    xCorners[4] = -11;
    yCorners[4] = 8;
    xCorners[5] = -5;
    yCorners[5] = 0;
  }
  public void move(){
  turn(rotationSpeed);
  super.move();
}

  public double getX(){
    return myCenterX;
  }
  
  public double getY(){
    return myCenterY;
  }
}

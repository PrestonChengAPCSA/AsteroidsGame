public class Bullet extends Floater{
  Bullet(Spaceship theShip){
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myXspeed = theShip.getMyXspeed();
    myYspeed = theShip.getMyYspeed();
    myPointDirection = theShip.getMyDirection();
    accelerate(5);
  }
  
  public void show(){
    ellipse((float)myCenterX,(float)myCenterY,10,10);
  }
  
  public double getX(){
    return myCenterX;
  }
  
  public double getY(){
    return myCenterY;
  }
}

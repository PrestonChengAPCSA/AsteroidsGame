public class Spaceship extends Floater  
{   
   public Spaceship(){
      myPointDirection = 0;
      myColor = 255;
      myCenterX = 250;
      myCenterY = 250;
      corners = 4;
      xCorners = new int[corners];
      yCorners = new int[corners];
      myXspeed = 0;
      myYspeed = 0;
      xCorners[0] = -8;
      yCorners[0] = -8;
      xCorners[1] = 16;
      yCorners[1] = 0;
      xCorners[2] = -8;
      yCorners[2] = 8;
      xCorners[3] = -2;
      yCorners[3] = 0;
    }
    
      public double getX(){
    return myCenterX;
  }
  
  public double getY(){
    return myCenterY;
  }
}

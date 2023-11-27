Star [] nightSky = new Star[200];
Spaceship Player = new Spaceship();
public void setup() 
{
  size(500, 500);
  background(0);
  for (int i = 0; i < nightSky.length; i ++) {
    nightSky[i] = new Star();
  }
}

public void draw() 
{
  background(0);
  for(int i = 0; i < nightSky.length; i++){
    nightSky[i].show();
  }
  Player.show();
  Player.move();
}

    public void keyPressed(){
      if(key == 'w'){
        Player.accelerate(0.25);
      }
      if(key=='s'){
        Player.accelerate(-0.25);
      }
      if(key== 'a'){
        Player.turn(-5);
      }
      if(key== 'd'){
        Player.turn(5);
      }
      if(key == 'h'){
        Player.myCenterX = Math.random()*500;
        Player.myCenterY = Math.random()*500;
        Player.myXspeed = 0;
        Player.myYspeed = 0;
        Player.myXspeed = 0;
        Player.myPointDirection = Math.random()*360;
      }
    }

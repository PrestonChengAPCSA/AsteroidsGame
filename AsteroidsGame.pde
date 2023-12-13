Star [] nightSky = new Star[200];
Spaceship Player = new Spaceship();
Asteroid object = new Asteroid();
ArrayList <Asteroid> Asteroids = new ArrayList<Asteroid>();
ArrayList <Bullet> shots = new ArrayList<Bullet>();
public void setup() 
{
  size(500, 500);
  background(0);
  for (int i = 0; i < nightSky.length; i ++) {
    nightSky[i] = new Star();
  }
  for (int i = 0; i < 10; i++) {
    Asteroids.add( new Asteroid());
  }
}

public void draw() 
{
  background(0);
  for (int i = 0; i < nightSky.length; i++) {
    nightSky[i].show();
  }
  Player.show();
  Player.move();
  for (int i = 0; i < shots.size(); i ++) {
    shots.get(i).move();
    shots.get(i).show();
  }
  for (int i = 0; i < Asteroids.size(); i ++) {
    Asteroids.get(i).show();
    Asteroids.get(i).move();
    float d = dist((float)Player.getX(), (float)Player.getY(), (float)Asteroids.get(i).getX(), (float)Asteroids.get(i).getY());
    for (int j = 0; j < shots.size(); j ++) {
      float di = dist((float)shots.get(j).getX(), (float)shots.get(j).getY(), (float)Asteroids.get(i).getX(), (float)Asteroids.get(i).getY());
      if (di < 20) {
        Asteroids.remove(i);
        shots.remove(j);
        j--;
        break;
      }   
    }
    if (d < 20) {
      Asteroids.remove(i);
    }
  }
}

public void keyPressed() {
  if (key == 'w') {
    Player.accelerate(0.25);
  } else if (key=='s') {
    Player.accelerate(-0.25);
  } else if (key== 'a') {
    Player.turn(-5);
  } else if (key== 'd') {
    Player.turn(5);
  } else if (key == 'h') {
    Player.myCenterX = Math.random()*500;
    Player.myCenterY = Math.random()*500;
    Player.myXspeed = 0;
    Player.myYspeed = 0;
    Player.myXspeed = 0;
    Player.myPointDirection = Math.random()*360;
  } else if (key == ' ') {
    shots.add(new Bullet(Player));
  }
}

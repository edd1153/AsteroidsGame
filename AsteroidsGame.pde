//your variable declarations here
Spaceship bob = new Spaceship();
Star[] nightSky = new Star [500];
Asteroids[] asteroid = new Asteroids [10];

public void setup() 
{
  //your code here
  size(500, 500);
  for (int i = 0; i < nightSky.length; i++){
   nightSky[i] = new Star();
  }
  for (int i = 0; i < asteroid.length; i++){
   asteroid[i] = new Asteroids();
  }
}
public void draw() 
{
  //your code here
  background(0);
  for (int i = 0; i < nightSky.length; i++){
   nightSky[i].show(); 
  }
  for (int i = 0; i < asteroid.length; i++){
   asteroid[i].show(); 
   asteroid[i].move();
  }
  bob.show();
  bob.move();
}
public void keyPressed(){
  if (key == 'd'){
    bob.turn(20);
  } 
  if (key == 'a'){
    bob.turn(-20);
  }
  if (key == 'w'){
    bob.accelerate(0.1);
  }
  if (key == 'h'){
    bob.hyperspace();
  }
}

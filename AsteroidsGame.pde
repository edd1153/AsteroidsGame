//your variable declarations here
Spaceship bob = new Spaceship();
Star[] nightSky = new Star [500];

public void setup() 
{
  //your code here
  size(500, 500);
  for (int i = 0; i < nightSky.length; i++){
   nightSky[i] = new Star();
  }
}
public void draw() 
{
  //your code here
  background(0);
  for (int i = 0; i < nightSky.length; i++){
   nightSky[i].show(); 
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
    bob.accelerate(0.6);
  }
  if (key == 'h'){
    bob.hyperspace();
  }
}

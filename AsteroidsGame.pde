//your variable declarations here
Spaceship bob = new Spaceship();
Star[] nightSky = new Star [500];
ArrayList <Asteroids> space = new ArrayList <Asteroids>();

public void setup() 
{
  //your code here
  size(500, 500);
  for (int i = 0; i < nightSky.length; i++){
   nightSky[i] = new Star();
  }
  for (int i = 0; i < 5; i++){
   space.add(new Asteroids());
  }
}
public void draw() 
{
  //your code here
  background(0);
  for (int i = 0; i < nightSky.length; i++){
   nightSky[i].show(); 
  }
  for (int i = 0; i < space.size(); i++){
   space.get(i).show();
   space.get(i).move();
   if (dist(bob.getMyCenterX(), bob.getMyCenterY(), space.get(i).getMyCenterX(), space.get(i).getMyCenterY()) < 30){
     space.remove(space.get(i));
   }
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
    bob.accelerate(0.5);
  }
  if (key == 'h'){
    bob.hyperspace();
  }
}

class Asteroids extends Floater{
  private int rotSpeed = (int)(Math.random() * 2) - 1;
  public Asteroids(){
    corners = 6;
    xCorners = new int[]{-11, 7, 13, 6, -11, -5};
    yCorners = new int[]{-8, -8, 0, 10, 8, 0};
    myColor = color(255, 0, 0);
    myCenterX = (int)(Math.random() * 500);
    myCenterY = (int)(Math.random() * 500);
    myDirectionX = (int)(Math.random() * 2.5);
    myDirectionY = (int)(Math.random() * 2.5);
    myPointDirection = (int)(Math.random() * 360);
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public float getMyCenterX(){
    return (float)myCenterX;
  }
  public float getMyCenterY(){
    return (float)myCenterY;
  }
}

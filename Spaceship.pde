class Spaceship extends Floater  
{   
  public Spaceship(){
    corners = 3;
    xCorners = new int[]{-8, 16, -8, -2};
    yCorners = new int[]{-8, 0, 8, 0};
    myColor = color(255);
    myCenterX = 250;
    myCenterY = 250;
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 0;
  }
  public void hyperspace(){
    myCenterX = (int)(Math.random() * 500);
    myCenterY = (int)(Math.random() * 500);
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = (int)(Math.random() * 360);
  }
}

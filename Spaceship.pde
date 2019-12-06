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
  
  public double setNumOne (double myCenterX){
    myCenterX = (int)(Math.random() * 500);
    return myCenterX;
  }
  public double setNumTwo (double myCenterY){
    myCenterY = (int)(Math.random() * 500);
    return myCenterY;
  }
  public double setNumThree (double myDirectionX){
    myDirectionX = 0;
    return myDirectionX;
  } 
  public double setNumFour (double myDirectionY){
    myDirectionY = 0;
    return myDirectionY;
  }
  public double setNumFive (double myPointDirection){
    myPointDirection = (int)(Math.random() * 360);
    return myPointDirection;
  }
  public void hyperspace(){
    bob.setNumOne(myCenterX);
    bob.setNumTwo(myCenterY);
    bob.setNumThree(myDirectionX);
    bob.setNumFour(myDirectionY);
    bob.setNumFive(myPointDirection);
  }
  public float getMyCenterX(){
    return (float)myCenterX;
  }
  public float getMyCenterY(){
    return (float)myCenterY;
  }
}

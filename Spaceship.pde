  
class Spaceship extends Floater  
{   
    //your code here
    Spaceship() {
        myCenterX = myCenterY = 200;
        myDirectionX = myDirectionY = 0;
        myPointDirection = 0;
        corners = 4;
        myColor = 0;
        xCorners = new int[]{-10, -5, -10, 10};
        yCorners = new int[]{7, 0, -7, 0};
    }
    public double getX() {return myCenterX;}
    public double getY() {return myCenterY;}
    public double getPointDir() {return myPointDirection;}
    public double getDirX() {return myDirectionX;}
    public double getDirY() {return myDirectionY;}
    public void setX(double n) {
        myCenterX = n;
    }
    public void setY(double n) {
        myCenterY = n;
    }
}

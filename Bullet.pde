class Bullet extends Floater{
	Bullet(Spaceship theShip) {
		myCenterX = theShip.getX();
		myCenterY = theShip.getY();
		myPointDirection = theShip.getPointDir();
		double dRadians = myPointDirection*(Math.PI/180);
		myDirectionX = 5 * Math.cos(dRadians) + theShip.getDirX();
		myDirectionY = 5 * Math.sin(dRadians) + theShip.getDirY();
	}
	public void show() {
		ellipse((float) myCenterX, (float) myCenterY,(float)10, (float)10);
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

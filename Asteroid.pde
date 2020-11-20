class Asteroid extends Floater {
	private int rotSpeed;
	Asteroid() {
		rotSpeed = (int) (Math.random() * 15 - 7);
		corners = 40;
 		xCorners = new int[corners];
		yCorners = new int[corners];
		// this sets the corners of the asteroid to random points on a circle of radius 20
		for(int i = 0; i < xCorners.length; i++) {
			double tempAngle = Math.random() * 6.283;
			xCorners[i] = (int) (Math.cos(tempAngle) * 20);//(int) (Math.random()*21-10)
			yCorners[i] = (int) (Math.sin(tempAngle) * 20);
		}
		myColor = color(10, 10, 10);   
		myCenterX = Math.random() * 1000; myCenterY = Math.random() * 1000; 
		myDirectionX = Math.random() - 0.5; myDirectionY = Math.random() - 0.5; //holds x and y coordinates of the vector for direction of travel   
		myPointDirection = 0;
	}
	public void move() {
		turn(rotSpeed);
		super.move();
	}

}

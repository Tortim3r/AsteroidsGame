class Bullet extends Floater
{
	private double dRadians;
	public Bullet(Spaceship theShip)
	{
		myCenterX = theShip.getX();
		myCenterY = theShip.getY();
		myPointDirection = theShip.getPointDirection();
		dRadians = myPointDirection*(Math.PI/180);
		myDirectionX = theShip.getDirectionX() + (5 * Math.cos(dRadians));
		myDirectionY = theShip.getDirectionY() + (5 * Math.sin(dRadians));
		myColor = #FFFF00;

	}
	public void show()
	{
		ellipse((int)(myCenterX),(int)(myCenterY),10,5);
	}
	public void move ()   
  	{      
    	myCenterX += myDirectionX;    
    	myCenterY += myDirectionY;    
    } 

	public void setX(int x){myCenterX = x;}
    public int getX(){return (int)(myCenterX);}
    public void setY(int y){myCenterY = y;}
    public int getY(){return (int)(myCenterY);}
    public void setDirectionX(double x){myDirectionX = x;}
    public double getDirectionX(){return myDirectionX;}
    public void setDirectionY(double y){myDirectionY = y;}
    public double getDirectionY(){return myDirectionY;}
    public void setPointDirection(int degrees){myPointDirection = degrees;}
    public double getPointDirection(){return myPointDirection;}
}
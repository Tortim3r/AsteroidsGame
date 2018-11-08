class Asteroid extends Floater
{
	public Asteroid()
	{
		
        corners = 10;  //the number of corners, a triangular floater has 3   
        xCorners = new int[corners];   
        yCorners = new int[corners];
        xCorners[0] = -1;
        yCorners[0] = 0;
        xCorners[1] = -6;
        yCorners[1] = -3;
        xCorners[2] = -8;
        yCorners[2] = -7;
        xCorners[3] = -5;
        yCorners[3] = -10;
        xCorners[4] = 3;
        yCorners[4] = -10;
        xCorners[5] = 12;
        yCorners[5] = 0;
        xCorners[6] = 3;
        yCorners[6] = 10;
        xCorners[7] = -5;
        yCorners[7] = 10;
        xCorners[8] = -8;
        yCorners[8] = 7;
        xCorners[9] = -6;
        yCorners[9] = 3;
        myColor = #FFFF00;   
        myCenterX = 400;
        myCenterY = 400; //holds center coordinates   
        myDirectionX = 0;
        myDirectionY = 0; //holds x and y coordinates of the vector for direction of travel   
        myPointDirection = 0;
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

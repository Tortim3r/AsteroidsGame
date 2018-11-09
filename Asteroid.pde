class Asteroid extends Floater
{
	public Asteroid()
	{
		
        corners = 9;  //the number of corners, a triangular floater has 3   
        xCorners = new int[corners];   
        yCorners = new int[corners];
        xCorners[0] = 2;
        yCorners[0] = -10;
        xCorners[1] = 6;
        yCorners[1] = -6;
        xCorners[2] = 10;
        yCorners[2] = 6;
        xCorners[3] = 7;
        yCorners[3] = 5;
        xCorners[4] = 4;
        yCorners[4] = 0;
        xCorners[5] = -1;
        yCorners[5] = 10;
        xCorners[6] = -3;
        yCorners[6] = 4;
        xCorners[7] = -7;
        yCorners[7] = -4;
        xCorners[8] = -2;
        yCorners[8] = 0;
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

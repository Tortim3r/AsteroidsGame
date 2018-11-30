class Asteroid extends Floater
{
	private int spoin;
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
        myColor = #FFFFFF;   
        myCenterX = (Math.random()*800);
        myCenterY = (Math.random()*800); //holds center coordinates   
        myDirectionX = 0;
        myDirectionY = 0; //holds x and y coordinates of the vector for direction of travel   
        myPointDirection = 0;
        spoin = (int)(Math.random()*5)-5;
	}
	private double move1 = (Math.random()*10)-5;
	private double move2 = (Math.random()*10)-5;
	public void move ()   //move the floater in the current direction of travel
  	{     
	  	turn(spoin);   
	        
	    myCenterX += move1;    
	    myCenterY += move2;     

	        
	    if(myCenterX >width)
	    {     
	      myCenterX = 0;    
	    }    
	    else if (myCenterX<0)
	    {     
	      myCenterX = width;    
	    }    
	    if(myCenterY >height)
	    {    
	      myCenterY = 0;    
	    } 
	    
	    else if (myCenterY < 0)
	    {     
	      myCenterY = height;    
	    }   
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

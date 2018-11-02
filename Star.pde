
class Star //note that this class does NOT extend Floater
{
	int myX,myY,mySize,myColor1,myColor2,myColor3;
  	public Star()
  	{
  		myX = (int)(Math.random()*800);
  		myY = (int)(Math.random()*800);
  		mySize = (int)(Math.random()*20);
  		myColor1 = (int)(Math.random()*255);
  		myColor2 = (int)(Math.random()*255);
  		myColor3 = (int)(Math.random()*255);
  	}
  	public void show()
  	{
  		noStroke();
  		fill(myColor1,myColor2,myColor3);
  		ellipse(myX,myY,mySize,mySize);
  	}
}

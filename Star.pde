
class Star //note that this class does NOT extend Floater
{
	int myX,myY,mySize;
  	public Star()
  	{
  		myX = (int)(Math.random()*800);
  		myY = (int)(Math.random()*800);
  	}
  	public void show()
  	{
  		ellipse(myX,myY,mySize,mySize);
  	}
}

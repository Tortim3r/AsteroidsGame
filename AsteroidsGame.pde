Spaceship mett;
public void setup() 
{
	size(800,800);
	mett = new Spaceship();
}
public void draw() 
{
  	mett.show();
  	mett.move();
}
public void keyPressed()
{
	if (key == 'f')
	{	
		mett.setX((int)(Math.random()*800));
		mett.setY((int)(Math.random()*800));
		mett.setDirectionX(0);
		mett.setDirectionY(0);
		mett.setPointDirection((int)(Math.random()*360));
	} 
	if (key == 'w')
	{	

		mett.setDirectionX((Math.cos((float)(mett.getPointDirection()))));
		mett.setDirectionY((Math.sin((float)(mett.getPointDirection()))));
	}
	if (key == 'a')
	{
		mett.setPointDirection(20);
	}
	if (key == 'd')
	{
		mett.setPointDirection(2);
	}

}

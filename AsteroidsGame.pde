Spaceship mett;
public void setup() 
{
	size(800,800);
	mett = new Spaceship();
}
public void draw() 
{
  	mett.show();
}
public void keyPressed()
{
	if (key == 'f')
	{	
		mett.setX((int)(Math.random()*800));
		mett.setY((int)(Math.random()*800));
		mett.setDirectionX(0);
		mett.setDirectionY(0);
	} 
}

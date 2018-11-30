Spaceship mett;
Star[] aton = new Star[100];

ArrayList <Asteroid> bolt = new ArrayList <Asteroid>();
public void setup() 
{
	size(800,800);
	mett = new Spaceship();
	
	for(int i = 0; i < aton.length;i++)
	{
		aton[i] = new Star();
	}
	for(int i = 0; i < 20;i++)
	{
		bolt.add(new Asteroid());
	}
}
public void draw() 
{
	background(25,25,112);
	for(int i = 0; i < aton.length;i++)
	{
		aton[i].show();
	}
	for(int i = 0; i < bolt.size();i++)
	{
		bolt.get(i).show();
  		bolt.get(i).move();
	}
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
		mett.accelerate(0.2);	
	}
	if (key == 's')
	{	
		mett.accelerate(-0.2);	
	}
	if (key == 'a')
	{
		mett.turn(-10);
	}
	if (key == 'd')
	{
		mett.turn(10);
	}

}

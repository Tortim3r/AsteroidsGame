Spaceship mett;
Star[] aton = new Star[100];

ArrayList <Bullet> phys = new ArrayList <Bullet>();
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
//  	float space = dist(mett.getX(),mett.getY(),bolt.get(i).getX(),bolt.get(i).getY());
//		if(space  < 20)
//		bolt.remove(i);

		for(int o = 0; o < phys.size();o++)
		{
			phys.get(o).show();
	  		phys.get(o).move();
	  		float space = dist(phys.get(o).getX(),phys.get(o).getY(),bolt.get(i).getX(),bolt.get(i).getY());
	  		if(space  < 20)
	  			bolt.remove(i);
	  			

			}
	}
  	mett.show();
  	mett.move();
  	/*
  	for(int o = 0; o < phys.size();o++)
	{
		phys.get(o).show();
  		phys.get(o).move();
  		float space = dist(phys.get(o).getX(),phys.get(o).getY(),bolt.get(i).getX(),bolt.get(i).getY());
  		if(space  < 20)
  			bolt.remove(i);

	}
	*/
  	
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
	if (key == 'v')
	{
		phys.add(new Bullet(mett));
	}	

}

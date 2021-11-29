
//Global Variables
int x = 400;
int y = 400;
int diameter = 200; 

int xx = 200;
int yy = 200;

int xD = 5;
int yD = 5;

int xxD = 5;
int yyD = 5;

//setup method
public void setup()
{
  background(#A79F9F);
  size(800, 800);
  
  x = (int)(Math.random()*width);
  y = (int)(Math.random()*height);
  xx = (int)(Math.random()*width);
  yy = (int)(Math.random()*height);
  ellipse(x, y, diameter, diameter);
  ellipse(xx, yy, diameter, diameter);

}

//draw method
public void draw()
{
  background(#A79F9F);
  ellipse(x, y, diameter, diameter);
  ellipse(xx, yy, diameter, diameter);

  x += xD;
  y += yD;
  xx += xxD;
  yy += yyD;
  if (x < 0 || x > width)
    xD = -1*xD;
  if (y < 0 || y > width)
    yD = -1*yD;
 if (xx < 0 || xx > width)
    xxD = -1*xxD;
 if (yy < 0 || yy > width)
    yyD = -1*yyD;    

if(collision(x, y, xx, yy) < (diameter/2 + diameter/2))
  {
    xD = -1*xD;
    xxD = -1*xxD;
    yD = -1*yD;
    yyD = -1*yyD;
    diameter -= 5;
  }
}

public int collision(int x, int y, int xx, int yy)
{
//double distance = Math.sqrt( (xx - x) * (xx - x) + (yy - y) * (yy - y) );
  return (int) (Math.sqrt( (xx - x) * (xx - x) + (yy - y) * (yy - y) )); 
}


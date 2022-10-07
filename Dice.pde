int totalDots = 0;
void setup()
{
  size(1050, 750);
  noLoop();
  background(200);
}
void draw()
{
  for(int y =10;y<=650;y = y += 65)
  {
  for(int x = 10;x<=1050; x = x += 65)
  {
  Dice instances = new Dice(x,y);
      instances.show();
      instances.roll();
  }
}
noStroke();
fill(200);
rect(415,650,250,35);
stroke(3);
fill(0);
textSize(30);
textAlign(CENTER,CENTER);
text("Total dots: "+ totalDots, 525,660);
}
void mousePressed()
{
  totalDots = 0;
  redraw();
}
class Dice
{
  int myX,myY; 
  Dice(int x, int y) //constructor
  {
    myX = x;
    myY = y;
  }
  void roll()
  {
  int addDots = (int)(Math.random()*6)+1;
    fill(0,0,0);
    if (addDots == 6){
     for(int y = 10; y <= 30; y+=10){
      for(int x = 10; x <= 30; x+=20){
       ellipse(myX+x,myY+y,3,3);
 }
}
    totalDots+=6;
   } else if (addDots == 5){ 
    for(int y = 10; y <= 30; y+=20){
    for(int x = 10; x <= 30; x+=20){
   ellipse(myX+x,myY+y,3,3);
 }
}
   totalDots+=5;
     ellipse(myX+20,myY+20,3,3);
    } else if (addDots == 4){
       for(int y = 10; y <= 30; y+=20){
      for(int x = 10; x <= 30; x+=20){
      ellipse(myX+x,myY+y,3,3);
    }
   }
     totalDots+=4;
  } else if (addDots == 3){
     ellipse(myX+30,myY+30,3,3);
     ellipse(myX+20,myY+20,3,3);
     ellipse(myX+10,myY+10,3,3);
          totalDots+=3;
  } else if (addDots == 2){
     ellipse(myX+30,myY+30,3,3);
     ellipse(myX+10,myY+10,3,3);
          totalDots+=2;
  } else {
     ellipse(myX+20,myY+20,3,3);
     totalDots+=1;
  }
}
  
  void show()
  {
    fill(#76D661);
   rect(myX,myY,40,40);
   
  }
}

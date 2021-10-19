//declare bacteria variables here  
Bacteria buster;
void setup()   
{     
  //initialize bacteria variables here
  buster = new Bacteria();
  size(500, 500);
}   
void draw()   
{    
  //move and show the bacteria
  buster.show();
  buster.walk();
}  
class Bacteria    
{     
  int myX, myY, bacteriaColor; //member variables

  Bacteria() { //class constructor
    myX = 100;
    myY = 100;
    bacteriaColor = color(30, 30, 30);
  }

    void walk() {
      myX = myX + (int)(Math.random()*10)-4;
      myY = myY + (int)(Math.random()*10)-4;
    }
    
    void show() {
      ellipse(myX, myY, 50, 50);
    }
}    

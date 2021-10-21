//declare bacteria variables here  
Bacteria buster;
Bacteria [] bunch = new Bacteria [5];
void setup()   
{     
  //initialize bacteria variables here
  buster = new Bacteria();
  size(500, 500);
  ////for (int i = 0; i < bunch.length; i++) {
  ////  bunch[i] = new Bacteria();
  //}
}   
void draw()   
{    
  //move and show the bacteria
  background(150, 219, 145);
  buster.show();
  buster.follow();
  //buster.walk();
  //for (int i =0; i<bunch.length; i++) {
  //  bunch[i].walk();
  //  bunch[i].show();
  //}
}  
class Bacteria    
{     
  int myX, myY, bacteriaColor; //member variables

  Bacteria() { //class constructor
    myX = 100;
    myY = 100;
    //bacteriaColor = color(217, 252, 252, 30);
    bacteriaColor = color(0);
  }

  void walk() {
    myX = myX + (int)(Math.random()*10)-3;
    myY = myY + (int)(Math.random()*10)-3;
  }

  void show() {
    stroke(188, 230, 230);
    fill (bacteriaColor);
    ellipse(myX, myY, 50, 50);
    
    //duck
    
    
    //ducklings 
  }

  void follow() {
    if (mouseX - myX >= 0) 
      myX = myX + (int)(Math.random()*10)+5;

    if (mouseX - myX <= 0) 
      myX = myX + (int)(Math.random()*10)-15;

    if (mouseY - myY >= 0) 
      myY = myY + (int)(Math.random()*10)+5;

    if (mouseY - myY <= 0) 
      myY = myY + (int)(Math.random()*10)-15;
  }
}

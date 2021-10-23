//declare bacteria variables here  
PImage img;
Bacteria [] bunch = new Bacteria [20];
Water [] river = new Water[100];
void setup()   
{     
  //initialize bacteria variables here
  size(700, 500);
  fill (0);
  for (int i = 0; i < bunch.length; i++) {
    bunch[i] = new Bacteria();
  }
  for (int i = 0; i < river.length; i++) {
    river[i] = new Water();
  }


  img = loadImage("realduck.png");
}   
void draw()   
{    
  background(166, 219, 222);
  
  for (int i =0; i < river.length; i++) {
    river[i].show();
    river[i].walk();
  }

  textSize(20);
  fill(255, 0, 0);
  
  for (int i =0; i<bunch.length; i++) {
    bunch[i].show();
    bunch[i].follow();
  }
}

class Water
{
  int myX, myY; //member variables

  Water() { //class constructor
    myX = 0;
    myY = 0;
  }

  void walk() {
    myX = myX + (int)(Math.random()*15)-3;
    myY = myY + (int)(Math.random()*15)-3;
  }

  void show() {
    stroke(188, 230, 230);
    fill (252, 213, 83);
    ellipse(myX, myY, 50, 50);
  }
}

class Bacteria    
{     
  int myX, myY;

  Bacteria() {
    myX = 250;
    myY = 350;
  }

  void show() {
    //duck
    image(img, myX, myY, 80, 80);
  }

  void follow() {
    if (mouseX - myX >= 10) 
      myX = myX + (int)(Math.random()*10)+5;

    if (mouseX - myX <= -10) 
      myX = myX + (int)(Math.random()*10)-15;

    if (mouseY - myY >= 10) 
      myY = myY + (int)(Math.random()*10)+5;

    if (mouseY - myY <= -10) 
      myY = myY + (int)(Math.random()*10)-15;
  }
}

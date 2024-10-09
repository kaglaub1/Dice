void setup()
{
  size(600, 700);
  noLoop();
  textAlign(CENTER);
  background(255);
}
void draw()
{
  int total = 0;
  background(255);
  for (int y = 0; y < 600; y+=100){
    for (int x = 0; x < 600; x+=100){
      Dicee bob = new Dicee(x, y);
      bob.show();
      total += bob.value;
    }
    
  }
  displayTotal(total);
  
}
void mousePressed()
{
  redraw();
}
class Dicee
{
  int value, myX, myY, total;
  Dicee(int x, int y)
  {
    value = (int)(Math.random()*6)+1;
    myX = x;
    myY = y;
  }
  void show()
  {
    translate(myX, myY);
  
    fill((int)(Math.random()*55)+200, (int)(Math.random()*55)+200, (int)(Math.random()*55)+200);
    stroke(0);
    strokeWeight(5);
    ellipse(20, 20, 20, 20);
    ellipse(20, 80, 20, 20);
    ellipse(80, 20, 20, 20);
    ellipse(80, 80, 20, 20);
  
    rect(20, 10, 60, 80);
    rect(10, 20, 80, 60);
  
  
    noStroke();
    ellipse(20, 20, 20, 20);
    ellipse(20, 80, 20, 20);
    ellipse(80, 20, 20, 20);
    ellipse(80, 80, 20, 20);
  
    rect(20, 10, 60, 80);
    rect(10, 20, 80, 60);
    fill(0);
    if (value == 1){
      ellipse(50, 50, 17, 17);
    }
    if (value == 2){
      ellipse(70, 30, 17, 17);
      ellipse(30, 70, 17, 17);
    }
    if (value == 3){
      ellipse(70, 30, 17, 17);
      ellipse(30, 70, 17, 17);
      ellipse(50, 50, 17, 17);
    }
    if (value == 4){
      ellipse(30, 30, 17, 17);
      ellipse(70, 70, 17, 17);
      ellipse(30, 70, 17, 17);
      ellipse(70, 30, 17, 17);
    }
    if (value == 5){
      ellipse(30, 30, 17, 17);
      ellipse(70, 70, 17, 17);
      ellipse(30, 70, 17, 17);
      ellipse(70, 30, 17, 17);
      ellipse(50, 50, 17, 17);
    }
    if (value == 6){
      ellipse(30, 30, 17, 17);
      ellipse(70, 70, 17, 17);
      ellipse(30, 70, 17, 17);
      ellipse(70, 30, 17, 17);
      ellipse(30, 50, 17, 17);
      ellipse(70, 50, 17, 17);
    }
    
    
    translate(-myX, -myY);
  }
  
}
void displayTotal(int num){
    textSize(50);
    text("Total: " + num, 300, 650);
  }

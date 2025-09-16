int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
int mr = (int)(Math.random()* 500);

void setup() {
  size(800, 400);
  strokeWeight(1);
  background(0);     
}

void draw() {
  stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256), mr);
  if (mr >= 250){
    fill (255, 0, 0);
    textSize(46);
    text("Nah twin that was kinda strong", 15, 70);
  }
  else if (mr < 250){
    fill (255,0,0);
    textSize(46);
    text("Yeah bro ts was weak", 15, 70);
  }
  while (endX < width) {
    endX = startX + (int)(Math.random()*10);    
    endY = startY + (int)(Math.random()*20 - 9);  
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}

void mousePressed() {
  mr = (int)(Math.random()* 500);
  background(0);
  startX = 0;
  startY = 150;
  endX = 0;
  endY = 150;
}

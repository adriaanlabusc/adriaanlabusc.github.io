int barWidth = 16;
int blockHeight = 16;
int lastBar = -1;
PImage contactMask;

void setup() 
{
  size(640, 150);
  colorMode(HSB, height, height, height);  
  noStroke();
  background(0);
  contactMask = loadImage("./assets/img/contact.png");
}

void draw() 
{
  int whichBar = mouseX / barWidth;
  int barX = whichBar * barWidth;
  int whichBlock = mouseY / blockHeight;
  int barY = whichBlock * blockHeight;
  
  fill(mouseY, height, height);
  rect(barX, barY, barWidth, blockHeight);
  image(contactMask,0,0); //draw the mask over top 
}

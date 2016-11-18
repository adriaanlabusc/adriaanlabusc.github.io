int barWidth = 12;
int blockHeight = 4;
int lastBar = -1;
PImage contactMask;
int canvasWidth = 640;
int canvasHeight = 150;

void setup() 
{
  size(canvasWidth, canvasHeight);
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

  int rowsToDraw = 8;
  int mouseYAdjusted = mouseY - (rowsToDraw/2)*blockHeight;
  int barYAdjusted = barY - (rowsToDraw/2)*blockHeight;
  
  // draw i blocks above, i below
  for (int i = 0; i < rowsToDraw; i++) {
    if (mouseYAdjusted < 0) mouseYAdjusted = 0;
    if (mouseYAdjusted > canvasHeight) mouseYAdjusted = canvasHeight;
    fill(mouseYAdjusted, height, height);
    rect(barX, barYAdjusted, barWidth, blockHeight);

    mouseYAdjusted += blockHeight;
    barYAdjusted += blockHeight;
  }

  image(contactMask,0,0); //draw the mask over top 
}

float characterX;
float characterY;
float speedX = 1;
float speedY = 1;
float colorR;
float colorG;
float colorB;

void setup()
{
  size(500, 500);
  characterX = width/2;
  characterY = height/2;
 }

void draw()
{
  background(300, 300 , 300);
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  //character
  
  fill(colorR, colorG, colorB);
  ellipse(characterX + 15, characterY - 15, 20, 25);
  ellipse(characterX - 15, characterY - 15, 20, 25);
  ellipse(characterX, characterY, 50, 50);
  fill(300, 300, 300);
  ellipse(characterX - 10, characterY - 5, 10, 10);
  ellipse(characterX + 10, characterY - 5, 10, 10);
  
  
  //direction
  if (speedX == -speedX)
  {
    characterX = characterX - speedX;
  }
  if (speedY == -speedY)  
  {
    characterY = characterY - speedY;
  }
   if (speedX == speedX)
  {
    characterX = characterX + speedX;
  }
  if (speedY == speedY)  
  {
    characterY = characterY + speedY;
  }
  if (characterX > 475)
  {
    speedX = -speedX;
  }
  if (characterX < 25)
  {
    speedX = -speedX;
  }
  if (characterY > 475)
  {
    speedY = -speedY;
  }
  if (characterY < 25)
  {
    speedY =  -speedY;
  }
 }


void mousePressed()
{
  speedX = random(1, 8);
  colorR = random(0, 400);
  colorG = random(0, 400);
  colorB = random(0, 400);
}
void keyPressed()
{
 speedY =  random(1, 8);
  colorR = random(0, 400);
  colorG = random(0, 400);
  colorB = random(0, 400);
}
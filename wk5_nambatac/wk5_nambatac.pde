/*
 Task for Week 5:
  1. Add IMAGE and TEXT elements to your Week 4 drawing
  2. Make character bounce up and down while CONTROL key is pressed 
  3. Make character move in a circular motion while ALT key is pressed 
 */

float x = 320;
float y = 220;
float angle;
int speed = 5;
int constant=10;
PImage img; 
PFont font;
String str = "I am Flying!!!! Wohoo!";
int x_text, y_text;

void setup() {
  size(960,640);

  img = loadImage("maxresdefault1.jpg");
  font = createFont("Arial", 64, true); 
  fill(255);
  x_text = width;
  y_text = height/2;
  textFont(font);
  
}    

// We Set pose1 as the default pose 
void draw() {

  background(img);
  displayText();
  textFont(font,20);
  text("Made By: Mark Nambatac",650,600);
  toggle_pose();
  if (keyPressed) {
    if (keyCode == RIGHT && 310+x <= width) {
      x+=speed;
    } else if (keyCode == LEFT && x+170 >=0) {
      x-=5;
    } else if (keyCode == UP && y+35 >= 0) {
      y-=5;
    } else if (keyCode == DOWN && 375+y <= height ) {
      y+=5;
    } else if (keyCode==CONTROL){
      y+=speed;
      if(y< -35 || y >(height -375)){
        speed =speed*-1;
      }
    } else if(keyCode == ALT){
       x=x+cos(angle)*constant;
       y=y+sin(angle)*constant;
       angle+=0.35;
    }
}
}
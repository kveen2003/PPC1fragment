class Letter {
  
 char myLetter;
 float xPosition, yPosition;
 float angle;
 color letterColor;

 Letter (char letter, float xPosition, float yPosition) {
    myLetter = letter;
    this.xPosition = xPosition;
    this.yPosition = yPosition;
    angle = random (2 * PI);
    letterColor = color( int(random(150,250)), int(random(50)), int(random(150,200)));
 }
 
 float getX(){
   //returns the current x position
  return xPosition; 
 }
 
 float getY(){
   // returns the current y position
   return yPosition;
 }
 
 void drawLetter(){
   pushMatrix();
   translate(xPosition, yPosition);
   rotate(angle);
   fill(letterColor);
   textSize(40);
   text(myLetter, 0,0);
   popMatrix();
 }
 
 void drawLetterTwo(float x, float y, float a){
   //draws letter based on the input of the method
   pushMatrix();
   translate(x, y);
   rotate(a);
   fill(letterColor);
   textSize(40);
   text(myLetter, 0,0);
   popMatrix();
   xPosition = x;
   yPosition = y;
 }
 
 
 

 
  
 
 void updateLetter(){
   // anything changing position and rotation
 }
 
}

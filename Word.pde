class Word {
  
 String myWord;
 float xPosition, yPosition;
 float angle;
 float angleB = 0.0;
 Letter [] letters;
 Letter letter;
 
 
 
 Word (String word, float xPosition, float yPosition) {
    myWord = word;
    this.xPosition = xPosition;
    this.yPosition = yPosition;
    angle = random (2 * PI);
    letters = new Letter [myWord.length()];
  
    
    // split te word in an array of the individual letters
    for(int i = 0; i< letters.length; i++) {
      letters[i] = new Letter (myWord.charAt(i), random(20, width-20), random(20,height-20));
    }
 }
 
 void drawWord(){
   pushMatrix();
   translate(xPosition, yPosition);
   rotate(angle); 
   fill(200,10,200);
   textSize(35);
   text(myWord, 0,0);
   popMatrix();
 }
 
 void drawLetters(){
   for(int i = 0; i< letters.length; i++) {
      letters[i].drawLetter();
    } 
 }
 
 void dragLetters(){
   float lastX;
   float lastY;
   for (int i = letters.length-1; i >= 0 ; i--){
     if(i == letters.length-1){
        lastX = mouseX;
        lastY = mouseY;
     } else {
       lastX = letters[i+1].getX();
       lastY = letters[i+1].getY();
     }
    float dx = lastX - letters[i].getX();
    float dy = lastY - letters[i].getY();
    angleB = atan2(dy, dx);  
    xPosition = lastX - (cos(angleB) * 20);
    yPosition = lastY - (sin(angleB) * 20);
    
    letters[i].drawLetterTwo(xPosition, yPosition, angleB);
   }
 }
 

 void updateWord(){
   // anything changing position and rotation
 }
 
 
}

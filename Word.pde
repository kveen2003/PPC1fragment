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
   for (int i = 0; i < letters.length; i++){
    float dx = mouseX - xPosition;
    float dy = mouseY - yPosition;
    angleB = atan2(dy, dx);  
    xPosition = mouseX - (cos(angleB) * 10);
    yPosition = mouseY - (sin(angleB) * 10);
    
    print(letters[i].giveChar());
    letters[i].drawLetterTwo(xPosition, yPosition, angleB);
   }
 }
 

 void updateWord(){
   // anything changing position and rotation
 }
 
 
}

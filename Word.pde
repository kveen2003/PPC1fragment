class Word {
  
 String myWord;
 float xPosition, yPosition;
 float angle;
 Letter [] letters;
 Letter letter;
 float[] x = new float[20];
 float[] y = new float[20];
 
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
      //letters[i].drawLetter();
    } 
 }
 
 void dragLetter(int i, float xin, float yin){
    float dx = xin - x[i];
    float dy = yin - y[i];
    float angle = atan2(dy, dx);  
    x[i] = xin - cos(angle) * 20;
    y[i] = yin - sin(angle) * 20;
    letter.drawLetter(x[i], y[i], angle);
 
 }
 
 void dragLetters(){
   dragLetter(0, mouseX, mouseY);
   for(int i = 0; i< letters.length; i++) {
       dragLetter(i+1,x[i], y[i]);
    } 
 }
 
 
 void updateWord(){
   // anything changing position and rotation
 }
 
 
}

Word word;
int state;  // this program has two states so far

void setup() {
  size(400, 400);
  word = new Word("Feel better soon!", width/2, height/2);
  for(int i = 0; i < word.letters.length;i++){
       
  }
  state = 0;  // the initial state is 0
}

void draw() {
  background(10, 200, 200);
  
  switch(state) {      // here a case distinction using a switch instruction
  case 0:
    word.drawWord();
    break;
  case 1:
    //word.drawLetters();
    word.dragLetters();
  }
  
}

void mouseClicked() {  // super simple interaction:
    state = 1 - state;   // the state changes on mouse click
}

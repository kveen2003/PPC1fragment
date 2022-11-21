// here is a very small fragment for a text animation program
// for the first assignment of Programming and Physical Computing
// you may use it, or just partly, extend, or throw it away and do sth different,
// read from a file, add more interesting interaction, more fonts, effect,
// make an array of words where each one has an own color, let them fade, explode,
// be creative!
// angelika mader november 2021

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

PFont font1;
PImage intro;
PImage a1;
PImage b1;
PImage a2;
PImage a3;
PImage b3;
int count;

void setup() {
  count = 0;
  size(1000, 500);
  background(255);
  font1 = createFont ("Anton-Regular.ttf", 24);
  intro=loadImage("intro.jpg");
  a1=loadImage("a1.jpg");
  b1=loadImage("b1.jpg");
  a2=loadImage("a2.jpg");
  a3=loadImage("a3.jpg");
  b3=loadImage("b3.jpg");
  
  image(intro,0,0,1000,500);
  textFont(font1, 24);
  fill(0);
  text ("Bart Simpson after school.", 80, 80);
  text ("hmm... I’m bored.n/Where should I go?", 80, 110);
  fill(46,24,255);
  text ("A.Stop by doughnut shop.", 80, 160);
  text ("B.Hang out with Todd Flanders", 80, 190);
 
}

void draw() {

  textFont(font1);
}


void keyPressed()
{
  if (keyPressed) {
    count ++ ;
    if ( key == 'a') {
      if ( count == 1 ) {
        image(a1,0,0,1000,500);
        fill(0);
        text ( "Look who is this! Krusty the Clown offer Bart a bomb.", 80, 80 ); 
        fill(46,24,255);
        text ( "A.Find some place to hide and save it for another day." ,80, 160 );
        text ( "B.Set it on fire NOW!", 80, 190 );
   
        //println(count) ;
      } else if ( count == 2 ) {
        image(a2,0,0,1000,500);
        fill(0);
        text ( "Yaaah~but where can I do this?", 80, 80 );
        fill(46,24,255);
        text ( "A.Back home.", 80, 160 );
        text ( "B.To school", 80, 190 );
      } else if ( count == 3 ) {
        image(a3,0,0,1000,500);
        fill(0);
        text ( "Bart!!!!!you are grounded!!!", 80, 80 );
        fill(255,0,0);
        text ( "press R to start again", 80, 190 );
      }
    } else if ( key == 'b' ) {
      if ( count == 1 ) {
        image(b1,0,0,1000,500);
        fill(0);
        text ( "Hey Bart, can you keep Blinky?", 80, 80 );
        fill(46,24,255);
        text ( "A.Find a place to keep it.", 80, 160 );
        text ( "B.Dye it blue.", 80, 190 );
      } else if ( count == 2 ) {
        image(a2,0,0,1000,500);
        fill(0);
        text ( "Yaaah~but where can I do this?", 80, 80 );
        fill(46,24,255);
        text ( "A.Back home.", 80, 160 );
        text ( "B.To school", 80, 190 );
      } else if ( count == 3 ) {
        image(b3,0,0,1000,500);
        fill(0);
        text ( "Get a week detention from Principal Skinner.", 80, 80 );
        fill(255,0,0);
        text ( "press R to start again", 80, 190 );
      }
    } else if ( key == 'r' ) {
      image(intro,0,0,1000,500);
      fill(0);
      text ("Bart Simpson after school.", 80, 80);
      text ("hmm... I’m bored.n/Where should I go?", 80, 110);
      fill(46,24,255);
      text ("A.Stop by doughnut shop.", 80, 160);
      text ("B.Hang out with Todd Flanders", 80, 190);
      count=0;
    }
  }
} 
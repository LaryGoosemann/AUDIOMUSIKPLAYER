//Library: Use Sketch / Import Library / Add Library / Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim; //Creates object to access all functions
AudioPlayer song1;

void setup() {
  //size(500, 600); 
  minim = new Minim(this);
  song1 = minim.loadFile("Scarlet Fire - Otis McDonald.mp3");
}
//End Setup
//
void draw() {
}//End Draw
//
void keyPressed() {
  //PLAY PAUSE STOP
  if (key=='P' || key=='p') {
    if (song1.isPlaying() ) { song1.pause();
    } else if (song1.position() >= song1.length()-song1.length()*1/5) {
      song1.rewind();
      song1.play();
    } else {
  song1.play();  }
  }
  //REWIND
  if (key=='<'||key==',') song1.skip(-1000);
  if (key=='>'||key=='.') song1.skip(1000);
  }//End KeyPressed
  //
  void mouseClicked() {
  }//End MouseClicked

import ddf.minim.*;
import ddf.minim.signals.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;

Minim minim;
AudioPlayer mati, mulai, open, yey, playing, kaget, win;

hantu[] hantuni;

int x=350;
int y=570;
PImage Up, Down, Left, Right, player, peta1, peta2, peta3, peta4, peta5, gameOver, home, about, caraMain, lolos, winner, hantu1, hantu2, hantu3, hantu4, hantu5, hantu6, acakHantu, bunga;
PImage hantuUp1, hantuUp2, hantuDown1, hantuDown2, hantuRight1, hantuLeft1;
int sesi=1;
int game=0;
int level=0;

boolean menang=false;
boolean kalah=false;

float timerGame =15;
float timer;
float rate = .0416;

void setup() {
  hantuni = new hantu[27];
  //level 1
  hantuni[0] = new hantu(185, 106, true, false, true);
  hantuni[1] = new hantu(265, 415, true, false, true);
  hantuni[2] = new hantu(337, 250, false, true, false);
  //level 2
  hantuni[3] = new hantu(131, 549, true, false, true);
  hantuni[4] = new hantu(368, 435, true, false, true);
  hantuni[5] = new hantu(448, 365, true, false, true);
  hantuni[6] = new hantu(141, 145, false, true, false);
  //level 3
  hantuni[7] = new hantu(120, 560, false, true, false);
  hantuni[8] = new hantu(356, 435, false, true, false);
  hantuni[9] = new hantu(470, 365, true, false, true);
  hantuni[10] = new hantu(470, 167, true, false, true);
  hantuni[11] = new hantu(520, 364, false, true, false);
  hantuni[12] = new hantu(150, 167, false, true, false);
  //level 4
  hantuni[13] = new hantu(85, 277, true, false, true);
  hantuni[14] = new hantu(192, 251, true, false, true);
  hantuni[15] = new hantu(295, 490, false, true, false);
  hantuni[16] = new hantu(554, 423, false, true, false);
  hantuni[17] = new hantu(437, 270, true, false, true);
  hantuni[18] = new hantu(160, 60, false, true, false);
  hantuni[19] = new hantu(226, 555, false, true, false);
  //level 5
  hantuni[20] = new hantu(106, 563, false, true, false);
  hantuni[21] = new hantu(232, 407, true, false, true);
  hantuni[22] = new hantu(339, 465, false, true, false);
  hantuni[23] = new hantu(402, 305, false, true, false);
  hantuni[24] = new hantu(335, 144, false, true, false);
  hantuni[25] = new hantu(505, 375, true, false, true);
  hantuni[26] = new hantu(95, 189, true, false, true);

  //smooth();
  size(700, 700);
  //muat gambar
  peta1 = loadImage("maps-maze1.png");
  peta2 = loadImage("maps-maze2.png");
  peta3 = loadImage("maps-maze3.png");
  peta4 = loadImage("maps-maze4.png");
  peta5 = loadImage("maps-maze5.png");

  hantu1 = loadImage("hantu1.png");
  hantu2 = loadImage("hantu2.png");
  hantu3 = loadImage("hantu3.png");
  hantu4 = loadImage("hantu4.png");
  hantu5 = loadImage("hantu5.png");
  hantu6 = loadImage("hantu6.png");

  hantuUp1= loadImage("PHantuUp2.png");
  hantuUp2= loadImage("PHantuUp1.png");
  hantuDown1= loadImage("PHantuDn2.png");
  hantuDown2= loadImage("PHantuDn1.png");
  hantuRight1= loadImage("PHantu2.png"); 
  hantuLeft1= loadImage("PHantu.png");

  player = loadImage("Player_Down.png");
  Up = loadImage("Player_Up.png");
  Down = loadImage("Player_Down.png");
  Right = loadImage("Player_Right.png");
  Left = loadImage("Player_Left.png");
  gameOver = loadImage("gameOver.png");
  home = loadImage("Home.png");
  about = loadImage("About.png");
  caraMain = loadImage("caraMain.png");
  lolos = loadImage("Lolos.png");
  winner = loadImage("win.png");
  bunga = loadImage("bunga.png");

  //deklarasi suara
  minim = new Minim(this);
  mati = minim.loadFile("death.mp3");
  mulai = minim.loadFile("lingsir_wengi.mp3");
  open = minim.loadFile("baby-heartbeat.mp3");
  yey = minim.loadFile("I_will_kill_you.mp3");
  playing = minim.loadFile("playing.mp3");
  kaget = minim.loadFile("scary.mp3");
  win = minim.loadFile("Happy_Laughter.mp3");
}

void draw() {  
  background(0);

  switch(sesi) {
  case 1:
    playing.pause();
    image(home, 0, 0, 700, 700);    
    mulai.play();
    break;
  case 2:
    //mulaigame
    mulai.close();
    if (level==1) {
      playGame(1);
    }
    if (level==2) {    
      playGame(2);
    }
    if (level==3) {
      playGame(3);
    }
    if (level==4) {
      playGame(4);
    }
    if (level==5) {
      playGame(5);
    }
    break;

  case 3:
    mulai.pause();
    open.play();    
    image(about, 0, 0, 700, 700);
    break;

  case 4:
    mulai.pause();
    open.play();    
    image(caraMain, 0, 0, 700, 700);
    break;
  }
}
//================================================================================ PLAY GAME ===========================================================================================
void playGame(int game) {

  switch(game) {
  case 1:
    image(peta1, 0, 0, 700, 700);
    titikHantu(0, 2);//tempat hantu mondar mandir
    checkPoint(x+10, y+10);
    image(player, x, y);
    println(x, y);//cekpos
    //durasi();
    timerGame -=rate;
    println(timerGame);
    textSize(20);
    if (timerGame>=.1) {
      fill(#FAD935);
      text(timerGame, 88, 38);
    } 
    if (timerGame<=0) {
      kalah=true;
      fill(#FAD935);
      textSize(20);
      text(0, 88, 38);
      //sesi = 4;
      println(sesi);
      image(gameOver, 0, 0, 700, 700);
      playing.pause();
      mati.play();
      noLoop();
    }
    if (x>325 && x<380) {
      if (y<=20) {
        mati.pause();
        playing.pause();
        fill(250, 0, 0);
        image(lolos, 0, 0, 700, 700);
        yey.play();
        sesi=2;
        noLoop();
      }
    }
    if (y==300 || y==305) {
      startTime=millis();
      kaget.pause();      
      image(hantu1, 0, 0, 700, 700);

      kaget.play();
      kaget = minim.loadFile("scary.mp3");
    } else if (x==245 || x==240 ) {
      kaget.pause();
      image(hantu2, 0, 0, 700, 700);

      kaget.play();
      kaget = minim.loadFile("scary.mp3");
    }
    break;
  case 2:
    image(peta2, 0, 0, 720, 680);
    titikHantu(3, 6);//tempat hantu mondar mandir    
    checkPoint(x+10, y+10);
    image(player, x, y);
    println(x, y);//cekpos
    //durasi();
    timerGame -=rate;
    println(timerGame);
    textSize(20);
    if (timerGame>=.1) {
      fill(#FAD935);
      text(timerGame, 88, 38);
    } 
    if (timerGame<=0) {
      fill(#FAD935);
      textSize(20);
      text(0, 88, 38);
      //sesi = 4;
      println(sesi);
      image(gameOver, 0, 0, 700, 700);
      playing.pause();
      mati.play();
      noLoop();
    }
    if (x>310 && x<380) {
      if (y<=20) {
        mati.pause();
        playing.pause();
        fill(250, 0, 0);
        image(lolos, 0, 0, 700, 700);
        yey.play();
        noLoop();
      }
    }
    //muncul hantu
    if (y==160 || y==165) {
      kaget.pause();
      image(hantu2, 0, 0, 700, 700); 
      kaget.play();
      kaget = minim.loadFile("scary.mp3");
    } 
    if (x==204 ||x==209) {
      kaget.pause();
      image(hantu3, 0, 0, 700, 700); 
      kaget.play();
      kaget = minim.loadFile("scary.mp3");
    }
    if (y==255 || y==260) {
      kaget.pause();
      image(hantu5, 0, 0, 700, 700); 
      kaget.play();
      kaget = minim.loadFile("scary.mp3");
    }
    break;
  case 3:
    image(peta3, 0, 0, 720, 680);
    titikHantu(7, 12);//tempat hantu mondar mandir
    checkPoint(x+10, y+10);
    image(player, x, y);
    println(x, y);//cekpos
    //durasi();
    timerGame -=rate;
    println(timerGame);
    textSize(20);
    if (timerGame>=.1) {
      fill(#FAD935);
      text(timerGame, 88, 38);
    } 
    if (timerGame<=0) {
      fill(#FAD935);
      textSize(20);
      text(0, 88, 38);
      //sesi = 4;
      println(sesi);
      image(gameOver, 0, 0, 700, 700);
      playing.pause();
      mati.play();
      noLoop();
    }
    if (x>325 && x<400) {
      if (y<=40) {
        mati.pause();
        playing.pause();
        fill(250, 0, 0);
        image(lolos, 0, 0, 700, 700);
        yey.play();        
        sesi=2;
        noLoop();
      }
    }
    //muncul hantu
    if (x==400 || x==405) {      
      image(hantu4, 0, 0, 700, 700); 
      kaget.play();
      kaget = minim.loadFile("scary.mp3");
    }
    if (y==265 || y==270) {
      image(hantu5, 0, 0, 700, 700); 
      kaget.play();
      kaget = minim.loadFile("scary.mp3");
    }
    if (y==140 || y==135 ) {
      image(hantu6, 0, 0, 700, 700); 
      kaget.play();
      kaget = minim.loadFile("scary.mp3");
    }
    if (y==200 || y==205) {
      image(hantu3, 0, 0, 700, 700); 
      kaget.play();
      kaget = minim.loadFile("scary.mp3");
    }
    break;
  case 4:
    image(peta4, 0, 0, 720, 680);
    titikHantu(13, 19);//tempat hantu mondar mandir
    checkPoint(x+10, y+10);
    image(player, x, y);

    println(x, y);//cekpos
    //durasi();
    timerGame -=rate;
    println(timerGame);
    textSize(20);
    if (timerGame>=.1) {
      fill(#FAD935);
      text(timerGame, 88, 38);
    } 
    if (timerGame<=0) {
      fill(#FAD935);
      textSize(20);
      text(0, 88, 38);
      //sesi = 4;
      println(sesi);
      image(gameOver, 0, 0, 700, 700);
      playing.pause();
      mati.play();
      noLoop();
    }
    if (x>325 && x<380) {
      if (y<=20) {
        mati.pause();
        playing.pause();
        fill(250, 0, 0);
        image(lolos, 0, 0, 700, 700);
        yey.play();
        sesi=2;
        noLoop();
      }
    }
    //muncul hantu
    if (x==100 || x==105) {      
      image(hantu2, 0, 0, 700, 700); 
      kaget.play();
      kaget = minim.loadFile("scary.mp3");
    } else if (y==460 || y==465) {
      image(hantu4, 0, 0, 700, 700); 
      kaget.play();
      kaget = minim.loadFile("scary.mp3");
    } else if (y==245 || y==250) {
      image(hantu6, 0, 0, 700, 700); 
      kaget.play();
      kaget = minim.loadFile("scary.mp3");
    }
    if (y==200 || y==195) {
      image(hantu3, 0, 0, 700, 700); 
      kaget.play();
      kaget = minim.loadFile("scary.mp3");
    }
    break;
  case 5:
    image(peta5, 0, 0, 720, 680);
    titikHantu(20, 26);//tempat hantu mondar mandir
    checkPoint(x+10, y+10);
    image(player, x, y);

    println(x, y);//cekpos
    //durasi();
    timerGame -=rate;
    println(timerGame);
    textSize(20);


    if (timerGame>=.1) {
      fill(#FAD935);
      text(timerGame, 88, 38);
    } 
    if (timerGame<=0 && menang==false) {
      fill(#FAD935);
      textSize(20);
      text(0, 88, 38);
      println(sesi);
      image(gameOver, 0, 0, 700, 700);
      playing.pause();
      kalah=true;      
      mati.play();
      noLoop();
    }

    if (x>325 && x<380) {
      if (y<=20) {
        menang=true;
        mati.pause();
        playing.pause();
        fill(250, 0, 0);
        image(winner, 0, 0, 700, 700);
        win.play();
        noLoop();
        //sesi=2;
      }
    }

    //muncul hantu
    if (x==348 || x==343) {      
      image(hantu1, 0, 0, 700, 700); 
      kaget.play();
      kaget = minim.loadFile("scary.mp3");
    } 
    if (y==260 || y==255) {
      image(hantu6, 0, 0, 700, 700); 
      kaget.play();
      kaget = minim.loadFile("scary.mp3");
    }
    if (y==160 || y==165) {
      image(hantu2, 0, 0, 700, 700); 
      kaget.play();
      kaget = minim.loadFile("scary.mp3");
    }
    if (y==110 || y==105) {
      image(hantu3, 0, 0, 700, 700); 
      kaget.play();
      kaget = minim.loadFile("scary.mp3");
    }
    break;
  }
}

void titikHantu(int a, int b) {
  for (int i=a; i<=b; i++) {
    hantuni[i].draw();
  }
}

void gamePause() {
  if (looping==true) {
    noLoop();
  }
}

//================================================================ AUTO LOAD SOUND ====================================================================
void autoload() {
  yey = minim.loadFile("I_will_kill_you.mp3");
  mati = minim.loadFile("death.mp3");
  mulai = minim.loadFile("lingsir_wengi.mp3");
  playing = minim.loadFile("playing.mp3");
  kaget = minim.loadFile("scary.mp3");
}

void keyPressed() {
  //Start Game Key
  if (sesi==1 && key=='m' || key=='M') {
    x=350;
    y=570;
    sesi=2;
    game=1;
    level=5;
    timerGame = 65;
    playing.play();
  }
  //Restart Game Key
  if (key=='u' || key=='U') {

    if (sesi==2 && level==1) {
      kalah=false;
      autoload();
      playing.play();
      x=350;
      y=570;
      timerGame=15;
      sesi=2;
    } else if (sesi==2 && level==2) {
      kalah=false;
      autoload();
      playing.play();
      x=375;
      y=590;
      timerGame=25;
      sesi=2;
    } else if (sesi==2 && level==3) {
      kalah=false;
      autoload();
      playing.play();
      x=375;
      y=590;
      timerGame=35;
      sesi=2;
    } else if (sesi==2 && level==4) {
      kalah=false;
      autoload();
      playing.play();
      x=370;
      y=570;
      timerGame=60;
      sesi=2;
    } else if (sesi==2 && level==5 && kalah==true) {
      kalah=false;
      autoload();
      playing.play();
      x=370;
      y=570;
      timerGame=60;
      sesi=2;
    }
    loop();
  }
  if (key=='l' || key=='L') {
    if (sesi==2 && level==1) {
      game=2;
      autoload();
      playing.play();
      x=371;
      y=590;
      timerGame=25;
      sesi=2;
      level=2;
    } else if (sesi==2 && level==2) {
      game=3;
      autoload();
      playing.play();
      x=375;
      y=590;
      timerGame=35;
      sesi=2;
      level=3;
    } else if (sesi==2 && level==3) {
      game=3;
      autoload();
      playing.play();
      x=370;
      y=570;
      timerGame=60;
      sesi=2;
      level=4;
    } else if (sesi==2 && level==4) {
      game=4;
      autoload();
      playing.play();
      x=370;
      y=570;
      timerGame=60;
      sesi=2;
      level=5;
    }
    loop();
  }
  // About Key
  if (key=='t' || key=='T' ) {
    println(sesi);
    if (sesi==1) {
      open = minim.loadFile("baby-heartbeat.mp3");
      sesi=3;
    }
  }
  // Back Key
  if ( key=='b' || key=='B') {
    if (sesi==3 || sesi==4||sesi==2) {

      timerGame=15;
      kalah=false;
      open.pause();
      mulai.pause();
      playing.pause();
      autoload();
      sesi=1;
    }
    loop();
  }
  if (key=='k' || key=='K') {
    exit();
  }
  if (key=='c' || key=='C') {
    if (sesi==1) {
      open = minim.loadFile("baby-heartbeat.mp3");
      sesi=4;
    }
  }
  if (key==' ') {
    if (looping==true) {
      noLoop();
    } else {      
      if (player==Up) {
        keyCode=UP;
        keyPressed=false;
        key=CODED;
      } else if (player==Down) {
        keyCode=DOWN;
        keyPressed=false;
        key=CODED;
      } else if (player==Right) {
        keyCode=RIGHT;
        keyPressed=false;
        key=CODED;
      } else {
        keyCode=LEFT;
        keyPressed=false;
        key=CODED;
      }
      loop();
    }
  }
}

void checkPoint(int cx, int cy) {
  if (red(get(cx, cy-10))==color(255, 0, 0)) {
    image(gameOver, 0, 0, 700, 700);
    mati.play();
  }

  if (keyPressed==false && keyCode==UP && key==CODED) {  // UP
    if (red(get(cx, cy-10)) == 255) {
      println("up");
      player=Up;
      y -=5;
    }
  } else if (keyPressed==false && keyCode==DOWN && key==CODED) {  // DOWN
    if (red(get(cx, cy+20)) == 255) {
      player=Down;
      println("down");
      y+=5;
    }
  } else if (keyPressed==false && keyCode==LEFT && key==CODED) {  // LEFT
    if (red(get(cx-10, cy)) == 255) {
      player=Left;
      println("left");
      x-=5;
    }
  } else if (keyPressed==false &&keyCode==RIGHT && key==CODED) {  // RIGHT
    if (red(get(cx+10, cy)) == 255) {
      player=Right;
      println("rigth");
      x+=5;
    }
  }
}
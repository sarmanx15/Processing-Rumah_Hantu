class hantu1 {
  //xy hantu level 1
  int x_h1l1=185;
  int y_h1l1=106;
  int x_h2l1=265;
  int y_h2l1=415;
  int x_h3l1=337;
  int y_h3l1=250;
  //xy hantu level 2
  int x_h1l2=131;
  int y_h1l2=549;
  int x_h2l2=368;
  int y_h2l2=435;
  int x_h3l2=448;
  int y_h3l2=365;
  int x_h4l2=141;
  int y_h4l2=145;
  //xy hantu level 3
  int x_h1l3=120;
  int y_h1l3=560;

  int x_h2l3=356;
  int y_h2l3=433;

  int x_h3l3=470;
  int y_h3l3=365;

  int x_h4l3=470;
  int y_h4l3=167;

  int x_h5l3=520;
  int y_h5l3=364;

  int x_h6l3=150;
  int y_h6l3=167;

  //xy hantu level 4
  int x_h1l4=85;
  int y_h1l4=277;

  int x_h2l4=192;
  int y_h2l4=251;

  int x_h3l4=295;
  int y_h3l4=490;

  int x_h4l4=554;
  int y_h4l4=423;

  int x_h5l4=437;
  int y_h5l4=270;

  int x_h6l4=160;
  int y_h6l4=60;

  int x_h7l4=226;
  int y_h7l4=555;

  //xy hantu level 5
  int x_h1l5=106;
  int y_h1l5=563;

  int x_h2l5=232;
  int y_h2l5=407;

  int x_h3l5=339;
  int y_h3l5=465;

  int x_h4l5=402;
  int y_h4l5=305;

  int x_h5l5=335;
  int y_h5l5=144;

  int x_h6l5=505;
  int y_h6l5=375;

  int x_h7l5=95;
  int y_h7l5=189;


  boolean h1l1_down=true;
  boolean h2l1_down=true;
  boolean h3l1_right=true;

  boolean h1l2_down=true;
  boolean h2l2_down=true;
  boolean h3l2_down=true;
  boolean h4l2_right=true;

  boolean h1l3_right=true;
  boolean h2l3_right=true;
  boolean h3l3_down=true;
  boolean h4l3_down=true;
  boolean h5l3_right=true;
  boolean h6l3_right=true;

  boolean h1l4_down=true;
  boolean h2l4_down=true;
  boolean h3l4_right=true;
  boolean h4l4_right=true;
  boolean h5l4_down=true;
  boolean h6l4_right=true;
  boolean h7l4_right=true;

  boolean h1l5_right=true;
  boolean h2l5_down=true;
  boolean h3l5_right=true;
  boolean h4l5_right=true;
  boolean h5l5_right=true;
  boolean h6l5_down=true;
  boolean h7l5_down=true;


  void hantu1level1() {    
    if (red(get(x_h1l1, y_h1l1+30)) == 255 && h1l1_down==true) {
      image(hantuDown1, x_h1l1, y_h1l1, 30, 30);
      y_h1l1+=4;
    } else {
      h1l1_down=false;
      image(hantuUp1, x_h1l1, y_h1l1, 30, 30);
      y_h1l1-=4;
      if (red(get(x_h1l1, y_h1l1)) != 255) {
        h1l1_down=true;
      }
    }
    if ((x>x_h1l1-10)&& (x < x_h1l1+10) && (y<y_h1l1+10)&& (y>y_h1l1-10)) {
      timerGame=0;
    }
  }
  void hantu2level1() {    
    if (red(get(x_h2l1, y_h2l1+30)) == 255 && h2l1_down==true) {
      image(hantuDown1, x_h2l1, y_h2l1, 30, 30);
      y_h2l1+=4;
    } else {
      h2l1_down=false;
      image(hantuUp1, x_h2l1, y_h2l1, 30, 30);
      y_h2l1-=4;
      if (red(get(x_h2l1, y_h2l1)) != 255) {
        h2l1_down=true;
      }
    }
    if ((x>x_h2l1-10)&& (x < x_h2l1+10) && (y<y_h2l1+10)&& (y>y_h2l1-10)) {
      timerGame=0;
    }
  }
  void hantu3level1() {    
    if (red(get(x_h3l1+30, y_h3l1)) == 255 && h3l1_right==true) {
      image(hantuRight1, x_h3l1, y_h3l1, 30, 30);
      x_h3l1+=5;
    } else {
      h3l1_right=false;
      image(hantuLeft1, x_h3l1, y_h3l1, 30, 30);
      x_h3l1-=4;
      if (red(get(x_h3l1, y_h3l1)) != 255) {
        h3l1_right=true;
      }
    }
    if ((x>x_h3l1-10)&& (x < x_h3l1+10) && (y<y_h3l1+10)&& (y>y_h3l1-10)) {
      timerGame=0;
    }
  }

  //========================level 2 =========================================

  void hantu1level2() {    
    if (red(get(x_h1l2, y_h1l2+20)) == 255 && h1l2_down==true) {
      image(hantuDown1, x_h1l2, y_h1l2, 25, 25);
      y_h1l2+=4;
    } else {
      h1l2_down=false;
      image(hantuUp1, x_h1l2, y_h1l2, 25, 25);
      y_h1l2-=4;
      if (red(get(x_h1l2, y_h1l2)) != 255) {
        h1l2_down=true;
      }
    }
    if ((x>x_h1l2-10)&& (x < x_h1l2+10) && (y<y_h1l2+10)&& (y>y_h1l2-10)) {
      timerGame=0;
    }
  }
  void hantu2level2() {    
    if (red(get(x_h2l2, y_h2l2+20)) == 255 && h2l2_down==true) {
      image(hantuDown2, x_h2l2, y_h2l2, 25, 25);
      y_h2l2+=4;
    } else {
      h2l2_down=false;
      image(hantuUp2, x_h2l2, y_h2l2, 25, 25);
      y_h2l2-=4;
      if (red(get(x_h2l2, y_h2l2)) != 255) {
        h2l2_down=true;
      }
    }
    if ((x>x_h2l2-10)&& (x < x_h2l2+10) && (y<y_h2l2+10)&& (y>y_h2l2-10)) {
      timerGame=0;
    }
  }
  void hantu3level2() {    
    if (red(get(x_h3l2, y_h3l2+20)) == 255 && h3l2_down==true) {
      image(hantuDown2, x_h3l2, y_h3l2, 25, 25);
      y_h3l2+=4;
    } else {
      h3l2_down=false;
      image(hantuUp2, x_h3l2, y_h3l2, 25, 25);
      y_h3l2-=4;
      if (red(get(x_h3l2, y_h3l2)) != 255) {
        h3l2_down=true;
      }
    }
    if ((x>x_h3l2-10)&& (x < x_h3l2+10) && (y<y_h3l2+10)&& (y>y_h3l2-10)) {
      timerGame=0;
    }
  }
  void hantu4level2() {    
    if (red(get(x_h4l2+20, y_h4l2)) == 255 && h4l2_right==true) {
      image(hantuRight1, x_h4l2, y_h4l2, 25, 25);
      x_h4l2+=5;
    } else {
      h4l2_right=false;
      image(hantuLeft1, x_h4l2, y_h4l2, 25, 25);
      x_h4l2-=4;
      if (red(get(x_h4l2, y_h4l2)) != 255) {
        h4l2_right=true;
      }
    }
    if ((x>x_h4l2-10)&& (x < x_h4l2+10) && (y<y_h4l2+10)&& (y>y_h4l2-10)) {
      timerGame=0;
    }
  }

  //=============================level 3 ========================================

  void hantu1level3() {    
    if (red(get(x_h1l3+20, y_h1l3)) == 255 && h1l3_right==true) {
      image(hantuRight1, x_h1l3, y_h1l3, 20, 20);
      x_h1l3+=5;
    } else {
      h1l3_right=false;
      image(hantuLeft1, x_h1l3, y_h1l3, 20, 20);
      x_h1l3-=4;
      if (red(get(x_h1l3, y_h1l3)) != 255) {
        h1l3_right=true;
      }
    }
    if ((x>x_h1l3-10)&& (x < x_h1l3+10) && (y<y_h1l3+10)&& (y>y_h1l3-10)) {
      timerGame=0;
    }
  }
  void hantu2level3() {    
    if (red(get(x_h2l3+20, y_h2l3)) == 255 && h2l3_right==true) {
      image(hantuRight1, x_h2l3, y_h2l3, 20, 20);
      x_h2l3+=5;
    } else {
      h2l3_right=false;
      image(hantuLeft1, x_h2l3, y_h2l3, 20, 20);
      x_h2l3-=4;
      if (red(get(x_h2l3, y_h2l3)) != 255) {
        h2l3_right=true;
      }
    }
    if ((x>x_h2l3-10)&& (x < x_h2l3+10) && (y<y_h2l3+10)&& (y>y_h2l3-10)) {
      timerGame=0;
    }
  }
  void hantu3level3() {    
    if (red(get(x_h3l3, y_h3l3+20)) == 255 && h3l3_down==true) {
      image(hantuDown1, x_h3l3, y_h3l3, 20, 20);
      y_h3l3+=4;
    } else {
      h3l3_down=false;
      image(hantuUp1, x_h3l3, y_h3l3, 20, 20);
      y_h3l3-=4;
      if (red(get(x_h3l3, y_h3l3)) != 255) {
        h3l3_down=true;
      }
    }
    if ((x>x_h3l3-10)&& (x < x_h3l3+10) && (y<y_h3l3+10)&& (y>y_h3l3-10)) {
      timerGame=0;
    }
  }
  void hantu4level3() {    
    if (red(get(x_h4l3, y_h4l3+20)) == 255 && h4l3_down==true) {
      image(hantuDown1, x_h4l3, y_h4l3, 20, 20);
      y_h4l3+=4;
    } else {
      h4l3_down=false;
      image(hantuUp1, x_h4l3, y_h4l3, 20, 20);
      y_h4l3-=4;
      if (red(get(x_h4l3, y_h4l3)) != 255) {
        h4l3_down=true;
      }
    }
    if ((x>x_h4l3-10)&& (x < x_h4l3+10) && (y<y_h4l3+10)&& (y>y_h4l3-10)) {
      timerGame=0;
    }
  }
  void hantu5level3() {    
    if (red(get(x_h5l3+20, y_h5l3)) == 255 && h5l3_right==true) {
      image(hantuRight1, x_h5l3, y_h5l3, 20, 20);
      x_h5l3+=5;
    } else {
      h5l3_right=false;
      image(hantuLeft1, x_h5l3, y_h5l3, 20, 20);
      x_h5l3-=4;
      if (red(get(x_h5l3, y_h5l3)) != 255) {
        h5l3_right=true;
      }
    }
    if ((x>x_h5l3-10)&& (x < x_h5l3+10) && (y<y_h5l3+10)&& (y>y_h5l3-10)) {
      timerGame=0;
    }
  }
  void hantu6level3() {    
    if (red(get(x_h6l3+20, y_h6l3)) == 255 && h6l3_right==true) {
      image(hantuRight1, x_h6l3, y_h6l3, 20, 20);
      x_h6l3+=5;
    } else {
      h6l3_right=false;
      image(hantuLeft1, x_h6l3, y_h6l3, 20, 20);
      x_h6l3-=4;
      if (red(get(x_h6l3, y_h6l3)) != 255) {
        h6l3_right=true;
      }
    }
    if ((x>x_h6l3-10)&& (x < x_h6l3+10) && (y<y_h6l3+10)&& (y>y_h6l3-10)) {
      timerGame=0;
    }
  }

  //=================================level 4 ===================================

  void hantu1level4() {    
    if (red(get(x_h1l4, y_h1l4+20)) == 255 && h1l4_down==true) {
      image(hantuDown2, x_h1l4, y_h1l4, 20, 20);
      y_h1l4+=4;
    } else {
      h1l4_down=false;
      image(hantuUp2, x_h1l4, y_h1l4, 20, 20);
      y_h1l4-=4;
      if (red(get(x_h1l4, y_h1l4)) != 255) {
        h1l4_down=true;
      }
    }
    if ((x>x_h1l4-10)&& (x < x_h1l4+10) && (y<y_h1l4+10)&& (y>y_h1l4-10)) {
      timerGame=0;
    }
  }
  void hantu2level4() {    
    if (red(get(x_h2l4, y_h2l4+20)) == 255 && h2l4_down==true) {
      image(hantuDown1, x_h2l4, y_h2l4, 20, 20);
      y_h2l4+=4;
    } else {
      h2l4_down=false;
      image(hantuUp1, x_h2l4, y_h2l4, 20, 20);
      y_h2l4-=4;
      if (red(get(x_h2l4, y_h2l4)) != 255) {
        h2l4_down=true;
      }
    }
    if ((x>x_h2l4-10)&& (x < x_h2l4+10) && (y<y_h2l4+10)&& (y>y_h2l4-10)) {
      timerGame=0;
    }
  }
  void hantu3level4() {    
    if (red(get(x_h3l4+20, y_h3l4)) == 255 && h3l4_right==true) {
      image(hantuRight1, x_h3l4, y_h3l4, 20, 20);
      x_h3l4+=5;
    } else {
      h3l4_right=false;
      image(hantuLeft1, x_h3l4, y_h3l4, 20, 20);
      x_h3l4-=4;
      if (red(get(x_h3l4, y_h3l4)) != 255) {
        h3l4_right=true;
      }
    }
    if ((x>x_h3l4-10)&& (x < x_h3l4+10) && (y<y_h3l4+10)&& (y>y_h3l4-10)) {
      timerGame=0;
    }
  }
  void hantu4level4() {    
    if (red(get(x_h4l4+20, y_h4l4)) == 255 && h4l4_right==true) {
      image(hantuRight1, x_h4l4, y_h4l4, 20, 20);
      x_h4l4+=5;
    } else {
      h4l4_right=false;
      image(hantuLeft1, x_h4l4, y_h4l4, 20, 20);
      x_h4l4-=4;
      if (red(get(x_h4l4, y_h4l4)) != 255) {
        h4l4_right=true;
      }
    }
    if ((x>x_h4l4-10)&& (x < x_h4l4+10) && (y<y_h4l4+10)&& (y>y_h4l4-10)) {
      timerGame=0;
    }
  }
  void hantu5level4() {    
    if (red(get(x_h5l4, y_h5l4+20)) == 255 && h5l4_down==true) {
      image(hantuDown1, x_h5l4, y_h5l4, 20, 20);
      y_h5l4+=4;
    } else {
      h5l4_down=false;
      image(hantuUp1, x_h5l4, y_h5l4, 20, 20);
      y_h5l4-=4;
      if (red(get(x_h5l4, y_h5l4)) != 255) {
        h5l4_down=true;
      }
    }
    if ((x>x_h5l4-10)&& (x < x_h5l4+10) && (y<y_h5l4+10)&& (y>y_h5l4-10)) {
      timerGame=0;
    }
  }
  void hantu6level4() {    
    if (red(get(x_h6l4+20, y_h6l4)) == 255 && h6l4_right==true) {
      image(hantuRight1, x_h6l4, y_h6l4, 20, 20);
      x_h6l4+=5;
    } else {
      h6l4_right=false;
      image(hantuLeft1, x_h6l4, y_h6l4, 20, 20);
      x_h6l4-=4;
      if (red(get(x_h6l4, y_h6l4)) != 255) {
        h6l4_right=true;
      }
    }
    if ((x>x_h6l4-10)&& (x < x_h6l4+10) && (y<y_h6l4+10)&& (y>y_h6l4-10)) {
      timerGame=0;
    }
  }
  void hantu7level4() {    
    if (red(get(x_h7l4+20, y_h7l4)) == 255 && h7l4_right==true) {
      image(hantuRight1, x_h7l4, y_h7l4, 20, 20);
      x_h7l4+=5;
    } else {
      h7l4_right=false;
      image(hantuLeft1, x_h7l4, y_h7l4, 20, 20);
      x_h7l4-=4;
      if (red(get(x_h7l4, y_h7l4)) != 255) {
        h7l4_right=true;
      }
    }
    if ((x>x_h7l4-10)&& (x < x_h7l4+10) && (y<y_h7l4+10)&& (y>y_h7l4-10)) {
      timerGame=0;
    }
  }

  // ============================= level 5 ==================================

  void hantu1level5() {    
    if (red(get(x_h1l5+20, y_h1l5)) == 255 && h1l5_right==true) {
      image(hantuRight1, x_h1l5, y_h1l5, 20, 20);
      x_h1l5+=5;
    } else {
      h1l5_right=false;
      image(hantuLeft1, x_h1l5, y_h1l5, 20, 20);
      x_h1l5-=4;
      if (red(get(x_h1l5, y_h1l5)) != 255) {
        h1l5_right=true;
      }
    }
    if ((x>x_h1l5-10)&& (x < x_h1l5+10) && (y<y_h1l5+10)&& (y>y_h1l5-10)) {
      timerGame=0;
    }
  }
  void hantu2level5() {    
    if (red(get(x_h2l5, y_h2l5+20)) == 255 && h2l5_down==true) {
      image(hantuDown2, x_h2l5, y_h2l5, 20, 20);
      y_h2l5+=4;
    } else {
      h2l5_down=false;
      image(hantuUp2, x_h2l5, y_h2l5, 20, 20);
      y_h2l5-=4;
      if (red(get(x_h2l5, y_h2l5)) != 255) {
        h2l5_down=true;
      }
    }
    if ((x>x_h2l5-10)&& (x < x_h2l5+10) && (y<y_h2l5+10)&& (y>y_h2l5-10)) {
      timerGame=0;
    }
  }
  void hantu3level5() {    
    if (red(get(x_h3l5+20, y_h3l5)) == 255 && h3l5_right==true) {
      image(hantuRight1, x_h3l5, y_h3l5, 20, 20);
      x_h3l5+=5;
    } else {
      h3l5_right=false;
      image(hantuLeft1, x_h3l5, y_h3l5, 20, 20);
      x_h3l5-=4;
      if (red(get(x_h3l5, y_h3l5)) != 255) {
        h3l5_right=true;
      }
    }
    if ((x>x_h3l5-10)&& (x < x_h3l5+10) && (y<y_h3l5+10)&& (y>y_h3l5-10)) {
      timerGame=0;
    }
  }
  void hantu4level5() {    
    if (red(get(x_h4l5+20, y_h4l5)) == 255 && h4l5_right==true) {
      image(hantuRight1, x_h4l5, y_h4l5, 20, 20);
      x_h4l5+=5;
    } else {
      h4l5_right=false;
      image(hantuLeft1, x_h4l5, y_h4l5, 20, 20);
      x_h4l5-=4;
      if (red(get(x_h4l5, y_h4l5)) != 255) {
        h4l5_right=true;
      }
    }
    if ((x>x_h4l5-10)&& (x < x_h4l5+10) && (y<y_h4l5+10)&& (y>y_h4l5-10)) {
      timerGame=0;
    }
  }
  void hantu5level5() {    
    if (red(get(x_h5l5+20, y_h5l5)) == 255 && h5l5_right==true) {
      image(hantuRight1, x_h5l5, y_h5l5, 20, 20);
      x_h5l5+=5;
    } else {
      h5l5_right=false;
      image(hantuLeft1, x_h5l5, y_h5l5, 20, 20);
      x_h5l5-=4;
      if (red(get(x_h5l5, y_h5l5)) != 255) {
        h5l5_right=true;
      }
    }
    if ((x>x_h5l5-10)&& (x < x_h5l5+10) && (y<y_h5l5+10)&& (y>y_h5l5-10)) {
      timerGame=0;
    }
  }
  void hantu6level5() {    
    if (red(get(x_h6l5, y_h6l5+20)) == 255 && h6l5_down==true) {
      image(hantuDown1, x_h6l5, y_h6l5, 20, 20);
      y_h6l5+=4;
    } else {
      h6l5_down=false;
      image(hantuUp1, x_h6l5, y_h6l5, 20, 20);
      y_h6l5-=4;
      if (red(get(x_h6l5, y_h6l5)) != 255) {
        h6l5_down=true;
      }
    }
    if ((x>x_h6l5-10)&& (x < x_h6l5+10) && (y<y_h6l5+10)&& (y>y_h6l5-10)) {
      timerGame=0;
    }
  }
  void hantu7level5() {    
    if (red(get(x_h7l5, y_h7l5+20)) == 255 && h7l5_down==true) {
      image(hantuDown1, x_h7l5, y_h7l5, 20, 20);
      y_h7l5+=4;
    } else {
      h7l5_down=false;
      image(hantuUp1, x_h7l5, y_h7l5, 20, 20);
      y_h7l5-=4;
      if (red(get(x_h7l5, y_h7l5)) != 255) {
        h7l5_down=true;
      }
    }
    if ((x>x_h7l5-10)&& (x < x_h7l5+10) && (y<y_h7l5+10)&& (y>y_h7l5-10)) {
      timerGame=0;
    }
  }
}
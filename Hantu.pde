class hantu {
  int x_hantu;
  int y_hantu;
  boolean down_hantu;
  boolean right_hantu;
  boolean atasBawah;

  hantu(int x, int y, boolean down, boolean right, boolean ab) {
    x_hantu = x;
    y_hantu = y;
    down_hantu = down;
    right_hantu = right;
    atasBawah = ab;
  }
  void draw() {
    if (atasBawah==true) {
      if (red(get(x_hantu, y_hantu+30)) == 255 && down_hantu==true) {
        image(hantuDown1, x_hantu, y_hantu, 20, 20);
        y_hantu +=4;
      } else {
        down_hantu=false;
        image(hantuUp1, x_hantu, y_hantu, 20, 20);
        y_hantu -=4;
        if (red(get(x_hantu, y_hantu)) != 255) {
          down_hantu=true;
        }
      }
      if ((x>x_hantu-10)&& (x < x_hantu+10) && (y<y_hantu+10)&& (y>y_hantu-10)) {
        timerGame=0;
      }
    } else {
      if (red(get(x_hantu+30, y_hantu)) == 255 && right_hantu==true) {
        image(hantuRight1, x_hantu, y_hantu, 20, 20);
        x_hantu+=5;
      } else {
        right_hantu=false;
        image(hantuLeft1, x_hantu, y_hantu, 20, 20);
        x_hantu-=4;
        if (red(get(x_hantu, y_hantu)) != 255) {
          right_hantu=true;
        }
      }
      if ((x>x_hantu-10)&& (x < x_hantu+10) && (y<y_hantu+10)&& (y>y_hantu-10)) {
        timerGame=0;
      }
    }
  }
}
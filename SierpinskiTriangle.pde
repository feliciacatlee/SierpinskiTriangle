public void setup() {
  size(400, 400);
  fill(0, 0, 0);
  background(0);
}

public void draw() {
  noStroke();
  sierpinski(0, 400, 400);
}

int i = 0;
boolean up = true;
public void mouseMoved() { //optional
  if(up){ //blue to white
    fill(i/2, i, 2*i);
    i++;
    if(i == 255)
      up = false;
  }
  if(!up){
    fill(i/2, i, 2*i);
    i--;
    if(i == 0)
      up = true;
  }
}

public void sierpinski(int x, int y, int len) {
  if(len <= 20)
    triangle(x, y, x+len, y, x+len/2, y-len);
  else {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}

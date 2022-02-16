public void setup(){
  size(500,500);
  rectMode(CENTER);
}

public void draw(){
  background(255);
  int lim = 10;
  myFractal(250,250,480, lim);
}


public void myFractal(int x, int y, int siz, int lim){
  fill(0,0,255);
  stroke(255);
  rect(x,y,siz,siz);
  if(siz > lim){
    myFractal(x-siz/2,y,siz/2,lim);
    myFractal(x+siz/2,y,siz/2,lim);
    myFractal(x,y+siz/2,siz/2,lim);
    myFractal(x,y-siz/2,siz/2,lim);
  }
}

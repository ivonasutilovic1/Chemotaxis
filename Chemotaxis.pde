Square [] pink;

void setup(){
  size(500, 500);
  background(0);
  pink = new Square[1000];
  int i=0;
  while (i<1000){
    pink[i] = new Square();
    i++;
  }
 
}

void draw(){
 background(245,195,194);
 for(int i=0; i<pink.length;i++){
   pink[i].skip();
   pink[i].show();
 }
 
 
}

class Square
{
  int myX, myY;
  Square()
  {
    myX=myY=250;
  }
  void skip(){
    myX=myX+(int)(Math.random()*7)-3;
    myY=myY+(int)(Math.random()*7)-3;
  }
 
  void show(){
    fill(215,215,215);
    rect(myX, myY, 50, 50);
  }
 
}

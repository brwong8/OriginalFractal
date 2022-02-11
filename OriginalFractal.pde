//fractal
public void setup(){
  size(500,500);
 background(255,255,255);
}
public void draw(){
  fill((int)(Math.random()*250)+150,(int)(Math.random()*150)+100,(int)(Math.random()*200)+150,50);
}
public void fractal(int x, int y, int len){
  if(len <= 50){
 //   ellipse(x,y,len,len);
 beginShape();
 vertex(x,y-12);
 vertex(x+4,y-16);
 vertex(x+8,y-20);
 vertex(x+16,y-20);
 vertex(x + 20, y - 12);
 vertex(x+20,y);
 vertex(x+8,y+12);
 vertex(x,y+20);
 vertex(x-8,y+12);
 vertex(x-20,y);
 vertex(x-20,y-12);
 vertex(x-16,y-20);
 vertex(x-12,y-20);
 vertex(x-4,y-16);
 vertex(x,y-12);
 endShape();
  }
  else{
    //horizontal 1
    fractal(x-len/4,y,len/2);
    fractal(x+len/4,y,len/2);
    //vertical 1
    fractal(x,y-len/4,len/2);
    fractal(x,y+len/4,len/2);
     //horizontal 2
    fractal(x-len/2,y,len/4);
    fractal(x+len/2,y,len/4);
    //vertical 2
    fractal(x,y-len/2,len/4);
    fractal(x,y+len/2,len/4);
  }
}

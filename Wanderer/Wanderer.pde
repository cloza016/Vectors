float x, y, velX, velY, diam;  //declare variables

void setup() {
size(800, 600);  //set size of canvas

//initialize variables
x = width/2;
y = height/2;
diam = 80;
velX = random(-5, 5);
velY = random(-5, 5);
}

void draw() {
background(0);  //draw background to cover previous frame
ellipse(x, y, diam, diam);  //draw ball

//add velocity to position
x += velX;
y += velY;

//wrap the ball's position
if(x>=width){
   x =0;     
  }else if(x<=0){
    x=width;
}
if(y>=height){
   y =0;
  }else if(y<=0){
    y=height;
  }
}
float diam;  //declare variable
PVector loc;  //replaces x and y
PVector vel;  //replaces velocity

void setup(){
size(800,600);  //set size of canvas

//initialize variables
diam=80;
loc=new PVector(width/2,height/2);
vel=new PVector(random(-5,5),random(-5,5));
}

void draw(){
background(0);  //draw background to cover previous frame
ellipse(loc.x,loc.y,diam,diam);  //draw ball

//add velocity to position
loc.x+=vel.x;
loc.y+=vel.y;

//wrap the ball's position
if(loc.x>=width){
   loc.x =0;     
  }else if(loc.x<=0){
    loc.x=width;
}
if(loc.y>=height){
   loc.y =0;
  }else if(loc.y<=0){
    loc.y=height;
  }
}
float diam;  //declare variable
PVector loc;  //replaces x and y
PVector vel;  //replaces velocity

void setup(){
size(800,600);   //set size of canvas

//initialize variables
diam=80;
loc=new PVector(width/2,height/2);
vel=PVector.random2D();  //replaces new PVector(random(-5,5),random(-5,5))
vel.mult(5);
}


void draw(){
background(0);  //draw background to cover previous frame

ellipse(loc.x,loc.y,diam,diam);  //draw ball

//add velocity to position
loc.add(vel);  //combines loc.x+=vel.x; and loc.y+=vel.y;


//.add() adds PVectors
//bounce ball if it hits walls
if(loc.x+diam/2>=width){
  vel.x=-abs(vel.x);    //if the ball hits the right wall, assign x velocity the negative version of itself
  }else if(loc.x-diam/2<=0){
    vel.x=abs(vel.x);     //if the ball hits the left wall, assign x velocity the positive version of itself
}
if(loc.y+diam/2>=height){
    vel.y=-abs(vel.y);
  }else if(loc.y-diam/2<=0){
    vel.y=abs(vel.y);
  }
}
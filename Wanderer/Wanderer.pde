float diam;  //declare variable
PVector loc;  //replaces x and y
PVector vel;  //replaces velocity
PVector acc;  //replaces acceleration

void setup(){
size(800,600);  //set size of canvas
colorMode(HSB,360,100,100,100);
noStroke();

//initialize variables
diam=80;
loc=new PVector(width/2,height/2);
vel=PVector.random2D();
vel.mult(0);
acc=PVector.random2D();
acc.mult(.01);
}

void draw(){
fill(frameCount%360,70,80);

ellipse(loc.x,loc.y,diam,diam);  //draw ball

loc.add(vel);  //add velocity to position

acc=PVector.random2D();
vel.add(acc);  //add acceleration to velocity
acc.mult(.01);

vel.limit(5);  //limit velocity to avoid being unable to overcome large velocity with small acceleration
}
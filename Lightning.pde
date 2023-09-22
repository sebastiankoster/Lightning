void setup() {
  size(1000,1000);
  background(200,200,256);
  stroke(256,256,0);
  strokeWeight(0);
}

int count = 0; //iterations for raindrop
float x = 100; //initial x value for first drop
float y = 0; //initial y value for all drops
int lightningCount = 0; //initialize lightning count
int strikeNumber = 0; //times lightning has struck
int lcount = 0; 
int ligtningX0= (int)(Math.random()*460+20);
int xl=ligtningX0;
int yl=0;
int ylp = 0;
int xlp = ligtningX0; 

void draw() {
 count++;
 int sx=0;
 float sy=2*count+0.01*0.5*9.81*pow(count,2); //y shift, note accelleration and initial velocity of 2p/s 
 if(sy+y>1000){ //new drop resets count and randomizes x value
  x = (float)(Math.random()*920+40);
  count = 0;
  y=100+(int)(Math.random()*30);
 } 
 background(150-10*strikeNumber,200-10*strikeNumber,256-10*strikeNumber);
  if (count<40){
   fill(256,256,256);
   cloud(x,y-30,5);
  }
 sy = sy+ 10;
 fill(0,20,200);
 bezier(x+sx,y+sy,x-50+sx,y+55+sy,x+50+sx,y+55+sy,x+sx,y+sy); //draw raindrop
 count++;
 if(yl>10000){    
     ligtningX0= (int)(Math.random()*460+20);
     xl=ligtningX0;
     yl=0;
     ylp = 0;
     xlp = ligtningX0;
  }

  count++;
  strokeWeight(10);
  stroke(256,256,0);
  line(xlp,ylp,xl,yl);
  strokeWeight(0.5);
  ylp =yl;
  xlp=xl;
  yl= yl+(int)(Math.random()*120);
  xl= xl+(int)(Math.random()*120-60);
}

void cloud(float xc,float yc,float sf){
  stroke(256,256,256);
  strokeWeight(0);
  fill(240,240,230);
  ellipse(xc,yc,30*sf,30*sf);
  ellipse(xc+12*sf,yc,20*sf,20*sf);
  ellipse(xc-12*sf,yc,30*sf,30*sf);
  ellipse(xc+10*sf,yc+20,20*sf,20*sf);
}

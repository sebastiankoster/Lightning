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
void draw() {
 count++;
 int sx=0;
 float sy=2*count+0.01*0.5*9.81*pow(count,2); //y shift, note accelleration and initial velocity of 2p/s 
 if(sy+y>1000){ //new drop resets count and randomizes x value
  x = (float)(Math.random()*920+40);
  count = 0;
  lightningCount++;
  y=100+(int)(Math.random()*30);
 } 
 background(150-10*strikeNumber,200-10*strikeNumber,256-10*strikeNumber);
  if (count<40){
   fill(256,256,256);
   cloud(x,y-30,5);
  }
  
 fill(0,20,200);
 bezier(x+sx,y+sy,x-50+sx,y+55+sy,x+50+sx,y+55+sy,x+sx,y+sy); //draw raindrop
 count++;
 //System.out.println(count);
 
 if (Math.random()<0.01*lightningCount){ //draws lightning
    int ligtningX0= (int)(Math.random()*460+20);
    int xl=ligtningX0;
    int yl=0;
    int ylp = 0;
    int xlp = ligtningX0;
    strokeWeight(16);
    stroke(256,256,0);
    background(50,50,50);
    while(yl<5000){
     fill(256,256,0);
     line(xlp,ylp,xl,yl);
     ylp =yl;
     xlp=xl;
     yl= yl+(int)(Math.random()*20);
     xl= xl+(int)(Math.random()*20-10);
      }
     lightningCount=0;
     strokeWeight(0.5);
     strikeNumber++;
   }
}

void cloud(float xc,float yc,float sf){
  stroke(250,250,250);
  fill(250,250,250);
  ellipse(xc,yc,30*sf,30*sf);
  ellipse(xc+12*sf,yc,20*sf,20*sf);
  ellipse(xc-12*sf,yc,30*sf,30*sf);
  ellipse(xc+10*sf,yc+20,20*sf,20*sf);
}

void mousePressed(){
    
  for (int i =0; i<=5; i++){
    int ligtningX0= (int)(Math.random()*460+20);
    int xl=ligtningX0;
    int yl=0;
    int ylp = 0;
    int xlp = ligtningX0;
    strokeWeight(16);
    stroke(256,256,0);
    background(50,50,50);
    while(yl<5000){
     fill(256,256,0);
     line(xlp,ylp,xl,yl);
     ylp =yl;
     xlp=xl;
     yl= yl+(int)(Math.random()*20);
     xl= xl+(int)(Math.random()*20-10);
      }
     lightningCount=0;
     strokeWeight(0.5);
  }
}

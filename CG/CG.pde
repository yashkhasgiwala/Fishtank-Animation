PImage img;
PImage[] horse = new PImage[14];
PImage[] star = new PImage[4];
PImage[] fish = new PImage[8];
PImage[] oct = new PImage[6];
PImage[] nemo1 = new PImage[2];
PImage[] nemo2 = new PImage[2];
PImage[] nemo3 = new PImage[2];
PImage[] nemo4 = new PImage[2];
PImage[] nemo5 = new PImage[2];

int fishX = -100, fishY = height/2;
int nemoX=-150,nemoY=300;
int octX=970,octY=700;
int horseX=-100,horseY=650;

boolean abc= false,xyz=false;

void setup() {
  size( 1500, 900 );
  smooth();
  img = loadImage( "aquarium.png" );
  
  fish[0] = loadImage( "frame_0_delay-0.15s.gif" );
  fish[1] = loadImage( "frame_1_delay-0.15s.gif" );
  fish[2] = loadImage( "frame_2_delay-0.15s.gif" );
  fish[3] = loadImage( "frame_3_delay-0.15s.gif" );
  fish[4] = loadImage( "frame_4_delay-0.15s.gif" );
  fish[5] = loadImage( "frame_5_delay-0.15s.gif" );
  fish[6] = loadImage( "frame_6_delay-0.15s.gif" );
  fish[7] = loadImage( "frame_7_delay-0.15s.gif" );
  
  nemo1[0] = loadImage("frame_0_delay-0.4s.gif");
  nemo1[1] = loadImage("frame_1_delay-0.4s.gif");
  nemo2[0] = loadImage("frame_0_delay-0.4s.gif");
  nemo2[1] = loadImage("frame_1_delay-0.4s.gif");
  nemo3[0] = loadImage("frame_0_delay-0.4s.gif");
  nemo3[1] = loadImage("frame_1_delay-0.4s.gif");
  nemo4[0] = loadImage("frame_0_delay-0.4s.gif");
  nemo4[1] = loadImage("frame_1_delay-0.4s.gif");
  nemo5[0] = loadImage("frame_0_delay-0.4s.gif");
  nemo5[1] = loadImage("frame_1_delay-0.4s.gif");
  
  oct[0]= loadImage("frame_0_delay-0.2s.gif");
  oct[1]= loadImage("frame_1_delay-0.2s.gif");
  oct[2]= loadImage("frame_2_delay-0.2s.gif");
  oct[3]= loadImage("frame_3_delay-0.2s.gif");
  oct[4]= loadImage("frame_4_delay-0.2s.gif");
  oct[5]= loadImage("frame_5_delay-0.2s.gif");
  
  star[0]= loadImage("frame_00_delay-0.1s.gif");
  star[1]= loadImage("frame_01_delay-0.1s.gif");
  star[2]= loadImage("frame_02_delay-0.1s.gif");
  star[3]= loadImage("frame_03_delay-0.1s.gif");
  
  horse[0]=loadImage("frame_00_delay-0.15s.gif");
  horse[1]=loadImage("frame_01_delay-0.15s.gif");
  horse[2]=loadImage("frame_02_delay-0.15s.gif");
  horse[3]=loadImage("frame_03_delay-0.15s.gif");
  horse[4]=loadImage("frame_04_delay-0.15s.gif");
  horse[5]=loadImage("frame_05_delay-0.15s.gif");
  horse[6]=loadImage("frame_06_delay-0.15s.gif");
  horse[7]=loadImage("frame_07_delay-0.15s.gif");
  horse[8]=loadImage("frame_08_delay-0.15s.gif");
  horse[9]=loadImage("frame_09_delay-0.15s.gif");
  horse[10]=loadImage("frame_10_delay-0.15s.gif");
  horse[11]=loadImage("frame_11_delay-0.15s.gif");
  horse[12]=loadImage("frame_12_delay-0.15s.gif");
  horse[13]=loadImage("frame_13_delay-0.15s.gif");
}

void draw() {
  image( img, 0, 0, width, height );
  image( fish[frameCount%8], fishX, fishY );
  image(nemo1[frameCount%2],nemoX,nemoY,80,80);
  image(nemo2[frameCount%2],nemoX+90,nemoY+45,80,80);
  image(nemo3[frameCount%2],nemoX,nemoY+90,80,80);
  image(nemo4[frameCount%2],nemoX+90,nemoY+135,80,80);
  image(nemo5[frameCount%2],nemoX,nemoY+180,80,80);
  image(oct[frameCount%6],octX,octY);
  image(star[frameCount%4],1300,700,140,140);
  image(star[frameCount%4],1250,650,140,140);
  image(horse[frameCount%14],horseX,horseY,350,350);
  
  fishX = fishX + 15;
  fishY=fishY+2;
  if ( fishX > width+100)  {
      if(abc)
      {
        fishX = -250;
        fishY=20;
        abc=false;
      }
      else
      {
        fishX=-50;
        fishY=590;
        abc=true;
      }
  }
  
 if(true)
  {
    if(xyz)
    {
      nemoX=nemoX +7;
      nemoY=nemoY-2;
      if(nemoX > width+30)
      {
        nemoX=-150;
        nemoY=100;
        xyz=false;
        return;
      }
      
    }
    else
    {
       nemoX=nemoX +7;
       nemoY=nemoY+2;
       if(nemoX > width+30)
      {
        nemoX=-150;
        nemoY=500;
        xyz=true;
        return;
      }
      
    }
  }

  octY=octY-7;
  if(octY<-250)
  {
    octY=900;
    octX=octX-200;
  }
  
  horseX=horseX+10;
  horseY=horseY-5;
  if(horseX>width+50)
  {
    horseX=-100;
    horseY=650;
  }
}

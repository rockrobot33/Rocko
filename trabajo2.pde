float r;
float x;
float y;
float step;
float t;


void setup() {
 size(500,500);
 background(55);
 noStroke();
 colorMode  (HSB,10, 0, 100);
 
 
 x= width/2;
 y= height/2;
 t= 100;
}
 


void draw () {
 r= random(1);
 step = random(10);
 fill((t*r)+20,(t*r)+20,(t*r)+20,(t*r)+20);
 println (r);
 ellipse (x,y,step,step);
 if(r < .25) {
   x= x+step; //aqui va a la derecha con 25% probabilidad
}
  if (r > .25 && r < .5) {
    x= x-step; //aqui va a la izquierda con 25% de probabilidad
  }
  if(r > .5 && r < .75) {
    y= y+step;
   }  
   if(r > .75) {
      y= y-step;
   } 
   if(r > .75){
     y= y+step;
   }
   if( y >= height || x >= width || y <=0 ||  x <=0) {
     x= width/2;
     y= height/2;
     }
  }
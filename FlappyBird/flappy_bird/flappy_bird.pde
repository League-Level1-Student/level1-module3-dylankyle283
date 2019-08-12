int birdX =300;
int birdY = 500;
int birdYVelocity = 100;
int pipeX = 400;
int pipe2X = 400;
int upperPipeHeight = (int) random(100, 400);
int pipeWidth = 100;
int lowerPipeHeight =(int) random(-400, -100);
 int score = 0;
  boolean intersectsPipes() { 
     if (birdY < upperPipeHeight && birdX > pipeX && birdX < (pipeX+pipeWidth)){
          return true; }
     else if (birdY>lowerPipeHeight && birdX > pipeX && birdX < (pipeX+pipeWidth)) {
          return true; }
     else { return false; }
}
    
  
  
  
  
  
  





void setup(){
  size(600, 1000);
  
  
  

    
  
}
void draw(){
  background(0, 100, 200);
fill(255, 255, 255);
stroke(0, 0, 0);
ellipse(birdX, birdY, 30, 30);
   fill(0, 250, 50);

rect(pipeX, 0, pipeWidth, upperPipeHeight);
 rect(pipe2X, 1000, pipeWidth, lowerPipeHeight);
  pipeX -= 5;
  pipe2X -= 5;
  birdY += 4;
    
    if(pipeX == -100){
    pipeX += 500;
     fill(0, 250, 50);

rect(pipeX, 0, pipeWidth, upperPipeHeight);
    upperPipeHeight = (int) random(100, 400);

    }

if(pipe2X == -100){
  pipe2X += 500;
 fill(0, 250, 50);
  rect(pipe2X, 1000, pipeWidth, lowerPipeHeight);
    lowerPipeHeight = (int) random(-400,- 100);
  
  
 
  
}
if(intersectsPipes() == true){

 
  
  
}


if(birdX > pipeX){
  score ++;
  
}

    
  
  println(birdY);
  text("Score: " + score, 500, 100);
}
void mousePressed(){
  
  birdY -= birdYVelocity;
  
  
  
  if(birdY  > 1000 ){
   exit();
  
  
  
}
}

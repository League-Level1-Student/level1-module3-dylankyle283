int frogx = 400;
int frogy = 500;



void setup(){
  
  
  
size(800,600);
  
  
  
}




void draw(){
  
fill(0, 250, 100);
background(0);
ellipse(frogx, frogy, 30, 30); 
  
  
  
  
  if( frogx >= 800){
    frogx = 800;}
   
  if( frogx <= 0){
    frogx = 0;}
    
  if( frogy <= 0){
   frogy = 0;}
    
   if( frogy >= 500){
   frogy = 500;}
  
  
  
  
  
}

void keyPressed()
{
    if(key == CODED){
        if(keyCode == UP)
        {
            frogy = frogy -10;
        }
        else if(keyCode == DOWN)
        {
            frogy = frogy +10;
        }
        else if(keyCode == RIGHT)
        {
           frogx = frogx +10;
        }
        else if(keyCode == LEFT)
        {
            frogx = frogx -10;
        }
    }
}

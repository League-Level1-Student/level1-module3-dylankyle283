int frogx = 400;
int frogy = 500;

public class Car{
 
  int carx ;
  int cary ;
  int size ;
  int speed  ;
  
  
  public Car(int carx, int cary,int size,int speed) {
    this.carx = carx;
    this.cary = cary;
    this.size = size;
    this.speed = speed;
  }
  
  
  
 void moveLeft(int speed){
   this.carx = this.carx - speed;
 if(this.carx <= 0){
   this.carx = 800;
 }
 }
 
 void moveRight(int speed){
   this.carx = this.carx + speed;
 if(this.carx >= 800){
   this.carx = 0;
 }
 }
 public int getX(){
   return this.carx;
 
 
 }
 
  public int getsize(){
   return this.size;
 
 
 }
  
public int getY(){
   return this.cary;
 }
  
void display()
  {
    fill(0,255,0);
    rect(carx , cary,  size, 50);
  }
  
boolean intersects(Car car) {
 if ((frogy > car.getY() && frogy < car.getY()+50) &&
                (frogx > car.getX() && frogx < car.getX()+car.getsize())) {
   return true;
  }
 else  {
  return false;
 }

}
}
 Car car1;
 Car car2;


void setup(){
  
  
  
size(800,600);
  
   car1 = new Car(50,50,50,8);
 
   car2 = new Car(100,50,50,8);
  
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
  
  
  car1.display();
  car2.display();
  
  car1.moveLeft(car1.speed);
  car2.moveRight(car2.speed);
  println("car1 x " + car1.getX());
  println("frog x: " + frogx);

  if(car1.intersects(car1) == true){
    frogy = 400;
  }
  
  if(car2.intersects(car2) == true){
    frogy = 400;
  }
   
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

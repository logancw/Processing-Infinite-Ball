float x,y;
float speed;
float direction; 
color c; 


// double speedIncrease = 0.1;

// Setuip 
void setup(){

  fullScreen(); 

  x = width/2;
  y = height/2;
  speed = 0.1;  // Adjustable to your liking
  direction = random(TWO_PI);
  c = color(255); // Inital Colour of the ball
}

void draw(){
  update(); // Calls the functions
  bounce();
  change();
  display();
}

void update(){
  x += cos(direction) * speed; 
  y += sin(direction) * speed;
}

//Handle bouncing off the edge
void bounce(){
  if(x > width || x < 0){
    direction = PI - direction;
  }
  if(y > height || y < 0){
    direction = TWO_PI - direction;
  }
}
// Change colour + increase speed.
void change(){
  speed += 0.5; 
  c = color(random(255), random(255), random(255));
}

void display(){
  fill(c);
  ellipse(x, y, 30, 30);
}


  

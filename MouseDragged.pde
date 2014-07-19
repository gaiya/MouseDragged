class Mover{
  float x, y;
  float r;
  color c;
  Mover(){
    x = random(width);
    y = random(height);
    r = random(10, 100);
    c = color(random(10,255), 255, 255);
  }
  
  void draw(){
    fill(c);
   ellipse(x, y, 2 * r, 2 * r); 
  }
}

Mover mover;

void setup(){
  size(500, 500);
  colorMode(HSB);
  mover = new Mover();
  
}

void draw(){
  background(100, 255, 255);
  mover.draw();
}

void mousePressed(){
  println("mousePressed");
}

void mouseDragged(){
  println("mouseDragged");
  mover.x = mouseX;
  mover.y = mouseY;
}

void mouseReleased(){
  println("mouseReleased");
}


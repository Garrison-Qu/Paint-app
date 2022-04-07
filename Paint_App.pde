//Garrison Qu
//Paint App
//March 29

color black = (0);
color red = color(255,0,0);
color orange = color(255,158,0);
color yellow = color(240,255,0);
color green = color(0,132,8);
color blue = color(68,0,250);
color purple = color(87,0,127);
color pink = color(252,98,230);
color currentColor;
float thickness = 5;
int currentShape; 
int round = 1;
int line = 2;
int area = 3;
int square = 4;
float size;
float sliderX;
float sliderY;
PImage pic;

void setup(){
  size(1200,750);
  background(255);
  currentColor = #000000;
  currentShape = line;
  area = 30;
  sliderX = 950;
  size = thickness;

}

void draw(){
  noStroke();  
  fill(200);
  rect(0,0,1200,100);
  rect(0,0,100,750);
  
  fill(255);
  rect(20,20,60,60);
  
  fill(black);
  rect(120,20,60,60);
  
  fill(red);
  rect(220,20,60,60);

  fill(orange);
  rect(320,20,60,60);
  
  fill(yellow);
  rect(420,20,60,60);
  
  fill(green);
  rect(520,20,60,60);
  
  fill(blue);
  rect(620,20,60,60);
  
  fill(purple);
  rect(720,20,60,60);
  
  fill(pink);
  rect(820,20,60,60);
  
  strokeWeight(5);
  fill(currentColor);
  stroke(currentColor);
  circle(50,150,60);
  
  rect(20,220,60,60);
  
  strokeWeight(5);
  line(950,50,1125,50);
  circle(sliderX, 50, size);
  
  fill(200);
  stroke(0);
  rect(10,520,80,60);
  
  fill(0);
  textSize(32);
  text("new",17,560);
  
  fill(200);
  rect(10,600,80,60);
  
  fill(0);
  textSize(32);
  text("load",17,640);
  
  fill(200);
  rect(10,680,80,60);
  
  fill(0);
  textSize(32);
  text("save",17,720);
}

void mouseReleased(){
  if (currentShape == round){
    fill(currentColor);
    stroke(currentColor);
    strokeWeight(thickness);
    circle(mouseX, mouseY, area);
  }
    
  sliderX();
  
  if (currentShape == square){
    fill(currentColor);
    stroke(currentColor);
    strokeWeight(thickness);
    rect(mouseX, mouseY, area, area);
  } 
}
  
void mouseDragged(){
  if (currentShape == line){
    if (mouseX > 100 && mouseY > 100){
    fill(currentColor);
    stroke(currentColor);
    strokeWeight(thickness);
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
  }
  
  sliderX();
}
 
void mouseClicked(){
  if (10 <= mouseX && mouseX <= 90 && 520 <= mouseY && mouseY <= 580){
    background(255);
  }
  
  if (10 <= mouseX && mouseX <= 90 && 600 <= mouseY && mouseY <= 660){
    selectInput("Pick an image to load","OpenImage");
  }
  
  if (10 <= mouseX && mouseX <= 90 && 680 <= mouseY && mouseY <= 740){
    selectOutput("Please name your drawing","SaveImage");
  }
  
  if (20 <= mouseX && mouseX <= 80 && 20 <= mouseY && mouseY <= 80){
    currentColor = color(255);
    currentShape = line;
  }
  
  if (120 <= mouseX && mouseX <= 180 && 20 <= mouseY && mouseY <= 80){
    currentColor = black;
    currentShape = line;
  }
  
  if (220 <= mouseX && mouseX <= 280 && 20 <= mouseY && mouseY <= 80){
    currentColor = red;
    currentShape = line;
  }
  
  if (320 <= mouseX && mouseX <= 380 && 20 <= mouseY && mouseY <= 80){
    currentColor = orange;
    currentShape = line;
  }
  
  if (420 <= mouseX && mouseX <= 480 && 20 <= mouseY && mouseY <= 80){
    currentColor = yellow;
    currentShape = line;
  }
  
  if (520 <= mouseX && mouseX <= 580 && 20 <= mouseY && mouseY <= 80){
    currentColor = green;
    currentShape = line;
  }
  
  if (620 <= mouseX && mouseX <= 680 && 20 <= mouseY && mouseY <= 80){
    currentColor = blue;
    currentShape = line;
  }
  
  if (720 <= mouseX && mouseX <= 780 && 20 <= mouseY && mouseY <= 80){
    currentColor = purple;
    currentShape = line;
  }
  
  if (820 <= mouseX && mouseX <= 880 && 20 <= mouseY && mouseY <= 80){
    currentColor = pink;
    currentShape = line;
  }
  
  if (dist(50, 150, mouseX, mouseY) < 30){
    currentShape = round;
  }
  
  if (20 <= mouseX && mouseX <= 80 && 220 <= mouseY && mouseY <= 280){
    currentShape = square;
  }
}

void sliderX(){
  if (950 <= mouseX && mouseX <= 1125 && mouseY <= 75 && 25 <= mouseY){
    sliderX = mouseX;
  }
  
  size = map(sliderX, 950, 1125, 5, 32);
  thickness = map(sliderX, 950, 1125, 5, 32);
}

void saveImage(File f){
  if (f != null){
    PImage canvas = get(100,100,width-100,height-100);
    canvas.save(f.getAbsolutePath());
  }
}

void openImage(File f){
  if (f != null){
    int n = 0;
    while (n < 100){
      PImage pic = loadImage(f.getPath());
      n = n + 1;
    }
  }
}

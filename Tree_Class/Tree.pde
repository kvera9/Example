boolean run;
PImage tree;
PImage sky;
int n = 75;


Tree[] Leaves = new Tree[n]; 

void setup() {
  size(650, 650);
  sky = loadImage("grass with blue sky.jpg"); 
  tree = loadImage("tree-with-no-leaves.png");
  run = false;

  for (int i = 0; i < n; i++) {
    Leaves [i] = new Tree(85, 85);
  }
}

void draw() {
  background(133, 193, 255);
  imageMode(CENTER);
  image(sky, width/2, 500, width, height - 200);
  image(tree, width/2, height/2, width, height);


  for (int i=0; i < n; i++) {
    Leaves[i].display();
    if (run) {
      Leaves[i].move();
    }
  }
  
  
  fill(255,0,0);
  textAlign(CENTER);
  textSize(35);
  text("Happy Fall!", mouseX,mouseY);
  
  
  
}


void mousePressed() {
  if (mouseX>0 && mouseY>0) {
    run = !run;
  }
}


void keyPressed() {
  if (key == 'r')
  {
    for (int i=0; i < n; i++) {
      Leaves[i].Reset();
    }
  }
}


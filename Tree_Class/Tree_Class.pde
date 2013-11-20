class Tree {
  PVector loc;
  PVector vel;
  PVector size;
  PImage k;


  Tree(int w, int h) {
    loc = new PVector(random(35, 605), random(100, 480));
    vel = new PVector(0, random(2, 6));
    size = new PVector(w, h);
    k = loadImage("Brown-Maple-Leaf.png");
  }

  void display() {
    imageMode(CENTER);
    image(k, loc.x, loc.y, size.x, size.y);
  }

  void move() {
    loc.add(vel);
  }
  void Reset() {
    loc = new PVector(random(35, 605), random(100, 480));
  }
}


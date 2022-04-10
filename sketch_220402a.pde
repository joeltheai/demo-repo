class MyE {
  float x, y;
  MyE(float x, float y) {
    this.x = x;
    this.y = y;
    
  }
}

float a = 9.085;
float b = -1.504;
float c = -9.111;
float d = 9.393;

ArrayList<MyE> myEs = new ArrayList<MyE>();

void setup() {
  size(540, 940);
  smooth();
  noStroke();
  
  // stroke(#2b5c38);
  ellipseMode(CENTER);
  background(250);
  fill(0, 3);
  
  float step = 1.0f / 500.0f;
  for (float x = 0; x < 1; x += step) {
    for (float y = 0; y < 1; y += step) {
      MyE tmpE = new MyE(y,x);
      myEs.add(tmpE);
    }
  }
  
}

void draw() {
  
  
  for (MyE tmpE : myEs) {
    
    float nx = cos(c * tmpE.x) - tan(d * tmpE.y);
    float ny = sin(c * tmpE.x) - cos(d * tmpE.y) + tan(a * tmpE.y) + sin(b * tmpE.x);      
    ellipse(nx * 100 + width / 2.5, ny * 128 + height / 2, 1, 1);
    tmpE.x = nx;
    tmpE.y = ny;
  }
}

void keyPressed() {
  if (key ==  's') {
    saveFrame("fyre-######.png");
  }
}

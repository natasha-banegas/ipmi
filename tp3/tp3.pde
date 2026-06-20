//https://youtu.be/pFCl-GFL5N4

PImage obra19;

int columnas = 10;
int filas = 10;
int tamCelda;

float angulo = 0;

int semillaColores;

void setup() {
  size(800, 400);

  obra19 = loadImage("19.jpg");

  tamCelda = 400 / columnas;

  rectMode(CENTER);
  ellipseMode(CENTER);

  semillaColores = int(random(10000));

  noLoop();
}

void draw() {
  background(255);

  image(obra19, 0, 0, 400, 400);

  randomSeed(semillaColores);

  pushMatrix();
  
  translate(400, 0);
  dibujarObra();

  popMatrix();
}

void mousePressed() {
  semillaColores = int(random(10000));
  redraw();
}

void mouseMoved() {
  angulo = map(mouseX, 400, width, 0, 360);
  redraw();
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    angulo = 0;
    redraw();
  }
}

//DECLARAR VARIABLES

//ellipse
int posXEllipse, posYEllipse; //posicion del centro del ellipse
int tamXEllipse, tamYEllipse; //tamaño en ancho y alto del ellipse

//rect
int posXRect, posYRect; //posicion del rect (esquina superior izquierda)
int tamXRect, tamYRect; //tamaño en ancho y alto del rect

//triangle
int triX1, triY1; //punto 1
int triX2, triY2; //punto 2
int triX3, triY3; //punto 3

//line
int lineX1, lineY1; //punto inicial
int lineX2, lineY2; //punto final

void setup() {
  size(800, 400);

  //ASIGNAR VARIABLES

  //ellipse
  posXEllipse = 400; //posicion horizontal
  posYEllipse = 200; //posicion vertical
  tamXEllipse = 80; //ancho del ellipse
  tamYEllipse = 80; //alto del ellipse

  //rect
  posXRect = 550;
  posYRect = 250;
  tamXRect = 160;
  tamYRect = 80;

  //triangle
  triX1 = 175;
  triY1 = 65;
  triX2 = 100;
  triY2 = 165;
  triX3 = 255;
  triY3 = 165;

  //line
  lineX1 = 540;
  lineY1 = 120;
  lineX2 = 685;
  lineY2 = 45;
}

void draw() {
  background(255);
  
  //DIBUJAR USANDO VARIABLES

  //ellipse
  noStroke();
  fill(255, 0, 255);
  ellipse(posXEllipse, posYEllipse, tamXEllipse, tamYEllipse);
  //ellipse(x, y, ancho, alto)

  //rect
  fill(0, 0, 255);
  rect(posXRect, posYRect, tamXRect, tamYRect);
  //rect(x, y, ancho, alto)

  //triangle
  fill(255, 255, 0);
  triangle(triX1, triY1, triX2, triY2, triX3, triY3);
  //triangle(x1, y1, x2, y2, x3, y3)
  
  //line
  stroke(255, 0, 0);
  strokeWeight(16);
  line(lineX1, lineY1, lineX2, lineY2);
  //line(x1, y1, x2, y2)
}

void mousePressed() {
  println("X: " + mouseX + ", Y: " + mouseY);
}

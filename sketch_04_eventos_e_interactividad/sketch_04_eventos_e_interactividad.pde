//EVENTOS E INTERACTIVIDAD

//VARIABLES PARA NUESTRO LAPIZ
color colorLapiz;
int grosorLapiz;

void setup() {
  size(600, 600);
  background(225);

  colorLapiz = color(0);
  grosorLapiz = 1;

  //ZONA DE DIBUJO
  noStroke();
  rect(50, 50, 500, 400);

  //BOTONES GROSOR
  fill(0);
  circle(80, 525, 10);
  circle(115, 525, 20);
  circle(160, 525, 30);
  
  //BOTONES COLORES
  //fill(255, 0, 0);
  //square(300, 510, 30);
  fill(0, 255, 0);
  square(350, 510, 30);
  fill(0, 0, 255);
  square(400, 510, 30);
}

void draw() {
  // HOVER
  if (mouseX > 300 && mouseX < 330 && mouseY > 510 && mouseY < 540) { //Si el mouse se posiciona sobre el color rojo
    fill(255, 100, 100); //Se agrega transparencia
  } else {
    fill(255, 0, 0);
  }
  square(300, 510, 30);
}

void keyPressed() { //Se ejecuta cuando presiono una tecla del teclado
  if ( key == ' ') { //Si presiono la barra espaciadora
    background(255); //Limpio el lienzo
  }

  if ( key == 'r') {
    colorLapiz = color(255, 0, 0);
  }

  if ( key == 'g') {
    colorLapiz = color(0, 255, 0);
  }

  if ( key == 'b') {
    colorLapiz = color(0, 0, 255);
  }

  if (key == 'y') {
    colorLapiz = color(255, 255, 0);
  }

  if (key == 'c') {
    colorLapiz = color(0, 255, 255);
  }

  if (key == 'p') {
    colorLapiz = color(255, 0, 255);
  }

  if (key == '+') {
    grosorLapiz = grosorLapiz + 1;
  }

  if (key == '-') {
    grosorLapiz = grosorLapiz - 1;
  }
}

void keyReleased() {//Se ejecuta cuando suelto una tecla que estaba presionada
}

void mousePressed() {//Se ejecuta cuando hago click en el mouse
  println(mouseX, mouseY);

  //Comportamiento de botones para elegir el grosor del lapiz
  float d1 = dist(mouseX, mouseY, 80, 525);
  int r1 = 30 / 2;
  if (d1 < r1) {
    grosorLapiz = 2;
  }

  float d2 = dist(mouseX, mouseY, 115, 525);
  int r2 = 30 / 2;
  if (d2 < r2) {
    grosorLapiz = 4;
  }

  float d3 = dist(mouseX, mouseY, 160, 525);
  int r3 = 30 / 2;
  if (d3 < r3) {
    grosorLapiz = 6;
  }

  //Comportamiento de botones para elegir el color del lapiz
  if (mouseX > 300 && mouseY > 510 && mouseX < 330 && mouseX < 540) {
    colorLapiz = color(255, 0, 0);
  }

  if (mouseX > 350 && mouseY > 510 && mouseX < 380 && mouseX < 540) {
    colorLapiz = color(0, 255, 0);
  }

  if (mouseX > 400 && mouseY > 510 && mouseX < 430 && mouseX < 540) {
    colorLapiz = color(0, 0, 255);
  }
}

void mouseReleased() {//Se ejecuta cuando suelto el click del mouse
}

void mouseDragged() {//Estado que se ejecuta cuando mantengo apretado el mouse y lo arrastro en la pantalla
  if (mouseX > 50 && mouseY > 50 && mouseX < 550 && mouseY < 450) {
    stroke(colorLapiz);
    strokeWeight(grosorLapiz);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}

void mouseClicked() {//Evento que se ejecuta cuando hago click y suelto en la misma posición
}

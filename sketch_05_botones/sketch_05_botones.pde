//CREACIÓN DE BOTONES

//BOTON DERECHO
int tamBotonD;
float posXBotonD;
float posYBotonD;
float distBotonD;
boolean botonDActivado;

//BOTON IZQUIERDO
int tamXBotonI;
int tamYBotonI;
float posXBotonI;
float posYBotonI;
boolean botonIActivado;

float posXTexto;

void setup() {
  size(400, 400);
  textSize(48);

  //BOTON DERECHO
  posXBotonD=width - width/3;
  posYBotonD = height - height/5;
  tamBotonD= 60;

  //BOTON IZQUIERDO
  tamXBotonI= 100;
  tamYBotonI=60;
  posXBotonI= width/3 - tamXBotonI/2;
  posYBotonI = height - height/5 - tamYBotonI/2;
}

void draw() {
  background(255);

  distBotonD= dist(mouseX, mouseY, posXBotonD, posYBotonD); //Funcion dist(): permite medir la distancia entre dos puntos, sirve para hacer botones circulares
  // Botones
  if (distBotonD<tamBotonD/2) {
    fill(255, 100, 100);
  } else {
    fill(255, 0, 0);
  }
  circle(posXBotonD, posYBotonD, tamBotonD); //Dibujo mi boton circular


  if (mouseX>posXBotonI && mouseX<posXBotonI+tamXBotonI && mouseY> posYBotonI && mouseY < posYBotonI + tamYBotonI) { //Delimito el area del boton, la accion va a suceder mientras este clickeando dentro de el rectangulo, como la imagen funciona como un rectangulo, este tipo de botones es muy util para personalizar
    fill(255, 100, 100);
  } else {
    fill(255, 0, 0);
  }

  rect(posXBotonI, posYBotonI, tamXBotonI, tamYBotonI); //Dibujo mi boton rectangular

  fill(0);

  if (botonIActivado==true) {

    text("¡Hola Mundo!", posXTexto, height/2);
  }

  if (botonDActivado==true && botonIActivado==true) {
    posXTexto++;
  }
}

void mousePressed() {
  if (distBotonD<tamBotonD/2) {
    botonDActivado=true; //Cuando presiono el boton pasa a true, lo que hace que el texto se mueva, aun sin mantenerlo apretado
  }

  if (mouseX>posXBotonI && mouseX<posXBotonI+tamXBotonI && mouseY> posYBotonI && mouseY < posYBotonI + tamYBotonI) {

    botonIActivado=true; //Idem que con el movimiento pero aparece el texto
  }
}

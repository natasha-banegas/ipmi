//Boton
float posXBoton, posYBoton;
int tamXBoton, tamYBoton;
boolean botonIActivado;

//Imagen
PImage miImagen;
float posXImagen, posYImagen, tamXImagen, tamYImagen;
float opacidad;

//Texto
PFont miFuente;
float posXTexto;
float posYTexto;
float tamTexto;

int estado;
int contador;

float posXRect, posYRect;
float tamXRect, tamYRect;

void setup() {
  size(400, 400);

  //Boton
  tamXBoton= 100;
  posXBoton= width/2 - tamXBoton/2;
  posYBoton = height - height/5 - tamYBoton/2;
  tamYBoton=60;

  //Imagen
  miImagen=loadImage("imagen.jpg");
  opacidad=0;

  //Texto
  miFuente= loadFont("Arial-Black-48.vlw");
  textFont(miFuente);
  posXTexto=width/2;
  posYTexto=height/2;
  tamTexto=24;
  textAlign(CENTER, CENTER);

  estado=1;
  contador=0;

  posXRect=0;
  posYRect=0;
  tamXRect=0;
  tamYRect=height;
}

void draw() {
  background(0);

  //Estado 1
  if (estado==1) {
    if (botonIActivado) {
      contador++;
      if (contador>0 && contador<50) {
        opacidad=map(contador, 0, 50, 0, 255);
      }

      if (contador>50) {
        contador=0;
        estado=2;
      }
    }

    tint(255, opacidad);
    image(miImagen, 0, 0, width, height);


    fill(255);
    textSize(24);
    text("Estado 1\nClick para iniciar", width/2, height/2);

    if (mouseX>posXBoton && mouseX<posXBoton+tamXBoton && mouseY> posYBoton && mouseY < posYBoton + tamYBoton) { //Delimito el area del boton, la accion va a suceder mientras este clickeando dentro de el rectangulo. La imagen funciona como un rectangulo, este tipo de botones es muy util para personalizar
      fill(255, 0, 0);
    } else {
      fill(255);
    }

    if (botonIActivado==false) {
      rect(posXBoton, posYBoton, tamXBoton, tamYBoton); //Dibujo mi boton rectangular
    }
  }

  //Estado 2
  if (estado==2) {
    botonIActivado=false;
    contador++;

    fill(255);
    textSize(tamTexto);

    if (contador<50) {
      posXTexto=width/2;
    } else if (contador>50 && contador<100) {
      posXTexto=map(contador, 50, 100, width/2, width+200);
    }

    if (contador>100 && contador<200) {
      fill(255, 0, 0);
      tamXRect=map(contador, 100, 200, 0, width);
      rect(posXRect, posYRect, tamXRect, tamYRect);
    }

    if (contador>200) {
      estado=3;
      contador=0;
    }

    text("Estado 2", posXTexto, posYTexto);
  }

  //Estado 3
  if (estado==3) {
    posXTexto=width/2;
    fill(255);
    text("Estado 3 \n Click para reiniciar", posXTexto, posYTexto);

    if (mouseX>posXBoton && mouseX<posXBoton+tamXBoton && mouseY> posYBoton && mouseY < posYBoton + tamYBoton) {
      fill(255, 0, 0);
    } else {
      fill(255);
    }

    rect(posXBoton, posYBoton, tamXBoton, tamYBoton); //Dibujo mi boton rectangular

    if (botonIActivado==true) {
      reiniciar();
    }
  }
}

void mousePressed() {

  if (mouseX>posXBoton && mouseX<posXBoton+tamXBoton && mouseY> posYBoton && mouseY < posYBoton + tamYBoton) {

    botonIActivado=true; //Idem que con el movimiento pero aparece el texto
  }
}

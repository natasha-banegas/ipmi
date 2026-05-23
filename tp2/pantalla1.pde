//Imagen tunel
PImage imagenTunel;
float posXImagen, posYImagen;
float tamXImagen, tamYImagen;

//Fuentes
PFont fuenteTitulo, fuenteSubtitulo, fuenteTextoBoton;

//Posiciones titulo y subtitulo
float posXTitulo, posYTitulo;
float posXSubtitulo, posYSubtitulo;

//Tamaños titulo y subtitulo
float tamTitulo, tamSubtitulo;
float tamTituloInicio, tamSubtituloInicio;

//Texto
String titulo, subtitulo;
float opacidadTitulo, opacidadSubtitulo;

//Tiempo
int contadorTexto;

//Boton comenzar
float posXBotonComenzar, posYBotonComenzar;
float tamXBotonComenzar, tamYBotonComenzar;
boolean hoverBotonComenzar, botonComenzarActivado;
float tamTextoBoton;

//Oscurecer pantalla
float opacidadPantalla;

//Tiempo transicion
int contadorTransicion;

void setupPantalla1() {
  //Imagen tunel
  imagenTunel = loadImage("coraline_tunel.png");
  posXImagen = 0;
  posYImagen = 0;
  tamXImagen = width;
  tamYImagen = height;

  //Fuentes
  fuenteTitulo = loadFont("KristenITC-Regular-72.vlw");
  fuenteSubtitulo = loadFont("KristenITC-Regular-28.vlw");
  fuenteTextoBoton = loadFont("KristenITC-Regular-22.vlw");

  //Posiciones titulo y subtitulo
  posXTitulo = width / 2;
  posYTitulo = 80;

  posXSubtitulo = width / 2;
  posYSubtitulo = 135;

  //Tamaños titulo y subtitulo
  tamTitulo = 72;
  tamSubtitulo = 28;
  tamTituloInicio = 24;
  tamSubtituloInicio = 14;

  //Texto
  titulo = "Coraline";
  subtitulo = "y la puerta secreta";
  opacidadTitulo = 0;
  opacidadSubtitulo = 0;

  //Tiempo
  contadorTexto = 0;

  //Boton comenzar
  tamXBotonComenzar = 200;
  tamYBotonComenzar = 50;
  posXBotonComenzar = width / 2 - tamXBotonComenzar / 2;
  posYBotonComenzar = 365;
  tamTextoBoton = 20;

  //Oscurecer pantalla
  opacidadPantalla = 0;

  //Tiempo transicion
  contadorTransicion = 0;
}

void drawPantalla1() {
  //Imagen tunel
  image(imagenTunel, posXImagen, posYImagen, tamXImagen, tamYImagen);

  //Tiempo
  if (botonComenzarActivado == false) {
    contadorTexto++;
  }

  //Entrada titulo
  if (contadorTexto > 0 && contadorTexto < 80) {
    opacidadTitulo = map(contadorTexto, 0, 80, 0, 255);
    tamTituloInicio = map(contadorTexto, 0, 80, 24, tamTitulo);
  }

  //Entrada subtitulo
  if (contadorTexto > 80 && contadorTexto < 160) {
    opacidadSubtitulo = map(contadorTexto, 80, 160, 0, 255);
    tamSubtituloInicio = map(contadorTexto, 80, 160, 14, tamSubtitulo);
  }

  //Texto
  textAlign(CENTER, CENTER);

  //Titulo
  fill(240, 220, 90, opacidadTitulo);
  textFont(fuenteTitulo);
  textSize(tamTituloInicio);
  text(titulo, posXTitulo, posYTitulo);

  //Subtitulo
  fill(240, 220, 90, opacidadSubtitulo);
  textFont(fuenteSubtitulo);
  textSize(tamSubtituloInicio);
  text(subtitulo, posXSubtitulo, posYSubtitulo);

  //Boton comenzar
  if (contadorTexto > 200) {
    if (mouseX > posXBotonComenzar && mouseX < posXBotonComenzar + tamXBotonComenzar && mouseY > posYBotonComenzar && mouseY < posYBotonComenzar + tamYBotonComenzar) {
      hoverBotonComenzar = true;
    } else {
      hoverBotonComenzar = false;
    }

    if (hoverBotonComenzar) {
      fill(255, 255, 120);
      stroke(255, 255, 180);
      strokeWeight(2);
      rect(posXBotonComenzar - 5, posYBotonComenzar - 2.5, tamXBotonComenzar + 10, tamYBotonComenzar + 5, 16);
      tamTextoBoton = 22;
    } else {
      fill(240, 220, 90);
      noStroke();
      rect(posXBotonComenzar, posYBotonComenzar, tamXBotonComenzar, tamYBotonComenzar, 16);
      tamTextoBoton = 20;
    }

    //Texto boton
    fill(0);
    textFont(fuenteTextoBoton);
    textSize(tamTextoBoton);
    text("COMENZAR", posXBotonComenzar + tamXBotonComenzar / 2, posYBotonComenzar + tamYBotonComenzar / 2);
    noStroke();
  }

  //Zoom imagen
  if (botonComenzarActivado) {
    contadorTransicion++;
    //Tamaño
    tamXImagen = map(contadorTransicion, 0, 80, width, width * 2.2);
    tamYImagen = map(contadorTransicion, 0, 80, height, height * 2.2);
    //Posicion
    posXImagen = map(contadorTransicion, 0, 80, 0, -width * 0.6);
    posYImagen = map(contadorTransicion, 0, 80, 0, -height * 0.6);
    //Oscurecer pantalla
    opacidadPantalla = map(contadorTransicion, 0, 80, 0, 255);
  }

  //Oscurecer pantalla
  fill(0, opacidadPantalla);
  rect(0, 0, width, height);

  //Cambio a pantalla 2
  if (contadorTransicion > 80) {
    estado = 2;
  }
}

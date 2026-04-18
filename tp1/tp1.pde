PImage img;

void setup() {
  size(800, 400);
  background(255);
  img = loadImage("cubismo.jpg");
}

void draw() {
  pushMatrix();
  translate(400, 0);

  //rectangulo azul con circulos
  stroke(0);
  strokeWeight(8);
  fill(24, 25, 110);
  quad(301, 31, 22, 28, 22, 68, 245, 184);
  stroke(171, 169, 232);
  fill(171, 169, 232);
  circle(31, 40, 24);
  circle(48, 79, 24);
  circle(76, 48, 24);
  circle(94, 85, 24);
  circle(179, 71, 24);
  circle(183, 31, 24);
  circle(226, 56, 24);

  //triangulo verde
  stroke(0);
  strokeWeight(8);
  fill(16, 70, 36);
  triangle(21, 68, 21, -15, -55, 25);

  //rectangulo lila
  stroke(0);
  fill(180, 175, 240);
  rect(21, -5, 45, 35);
  stroke(52, 50, 100);
  strokeWeight(2);
  line(40, 5, 59, -5);
  line(25, 12, 42, 22);
  circle(34, 9, 1);
  circle(48, 17, 1);

  //rectangulo rojo con rayas
  stroke(0);
  strokeWeight(8);
  fill(190, 68, 45);
  rect(62, -5, 190, 35);
  stroke(200, 7, 1);
  strokeWeight(12);
  line(76, 1, 88, 21);
  line(108, 2, 116, 20);
  line(132, 2, 143, 20);
  line(164, 1, 176, 20);
  line(193, 2, 205, 20);
  line(221, 3, 232, 20);

  //rectangulo azul
  stroke(0);
  strokeWeight(8);
  fill(31, 33, 118);
  rect(247, -5, 50, 35);

  //rectangulo verde
  fill(13, 63, 42);
  rect(299, -5, 105, 35);

  //rectangulo rosa con lineas blancas
  stroke(0);
  fill(219, 58, 139);
  rect(300, 22, 105, 90);

  //triangulo negro con circulos
  fill(2, 10, 0);
  triangle(358, 170, 277, 294, 509, 294);
  noStroke();
  fill(86, 103, 0);
  circle(338, 203, 40);
  circle(358, 251, 40);
  circle(395, 200, 40);
  circle(405, 259, 40);

  //triangulo rosa
  fill(199, 10, 62);
  triangle(360, 171, 423, 79, 424, 214);

  //triangulo amarillo con rayas
  fill(251, 245, 1);
  triangle(22, 67, 26, 156, 155, 140);
  stroke(255, 106, 3);
  strokeWeight(12);
  line(29, 86, 73, 107);
  line(31, 116, 68, 132);
  line(32, 142, 48, 148);
  stroke(0);
  strokeWeight(8);
  line(23, 68, 77, 97);

  //rectangulo rojo con lineas blancas
  fill(203, 10, 9);
  quad(22, 69, -51, 31, -50, 163, 26, 157);

  //rectangulo azul con rayas
  fill(158, 157, 226);
  quad(24, 155, -33, 154, -25, 270, 26, 251);
  stroke(12, 18, 98);
  strokeWeight(12);
  fill(167, 155, 231);
  line(22, 161, -5, 182);
  line(24, 196, -5, 219);
  line(25, 229, 0, 250);
  stroke(0);
  strokeWeight(8);
  line(75, 152, -5, 157);

  //rectangulo celeste
  fill(98, 197, 201);
  rect(25, 153, 100, 90);
  noStroke();
  fill(0, 74, 155);
  circle(34, 161, 6);
  circle(71, 169, 6);
  circle(56, 175, 6);
  circle(33, 186, 6);
  circle(66, 194, 6);
  circle(32, 213, 6);
  stroke(0, 74, 155);
  strokeWeight(4);
  line(56, 158, 34, 170);
  line(40, 195, 30, 199);
  line(46, 181, 53, 204);
  line(86, 169, 73, 182);
  line(81, 198, 80, 208);
  stroke(198, 255, 255);
  line(55, 165, 31, 178);
  line(37, 203, 32, 205);
  line(52, 184, 58, 202);
  line(90, 173, 78, 184);
  line(86, 202, 85, 210);

  //rectangulo rojo con circulos
  stroke(0);
  strokeWeight(8);
  fill(213, 1, 3);
  rect(-10, 286, 36, 115);
  noStroke();
  fill(187, 180, 174);
  circle(18, 313, 28);
  circle(16, 351, 28);
  circle(17, 393, 28);

  //cuadrado marron con lineas
  stroke(0);
  fill(39, 7, 2);
  square(27, 304, 100);

  //rectangulo rojo con rayas
  fill(158, 0, 0);
  rect(365, 292, 40, 112);
  stroke(118, 0, 0);
  strokeWeight(12);
  line(398, 300, 371, 317);
  line(397, 328, 370, 345);
  line(398, 358, 369, 377);
  line(397, 390, 382, 398);

  //cuadrado negro
  stroke(0);
  strokeWeight(8);
  fill(0);
  square(315, 293, 50);
  noStroke();
  fill(255);
  circle(359, 299, 3);
  circle(350, 314, 3);
  circle(348, 330, 3);
  circle(358, 337, 3);
  stroke(255);
  strokeWeight(2);
  line(352, 297, 348, 301);
  line(356, 306, 356, 331);
  line(345, 337, 353, 345);

  //triangulo rosadito
  noStroke();
  fill(250, 164, 117);
  triangle(342, 295, 332, 349, 262, 335);
  stroke(0);
  strokeWeight(8);
  noFill();
  bezier(337, 295, 345, 317, 341, 336, 329, 349);

  //rectangulo mostaza
  fill(172, 92, 3);
  rect(127, 345, 238, 62);

  //triangulo amarillo
  fill(245, 217, 0);
  triangle(26, 247, 26, 302, -39, 282);

  //rectangulo azul
  fill(16, 5, 73);
  quad(92, 231, 28, 251, 29, 303, 121, 314);

  //cola
  noStroke();
  fill(104, 198, 210);
  beginShape();
  vertex(303, 19);
  bezierVertex(303, 19, 245, 45, 229, 91);
  vertex(293, 115);
  endShape(CLOSE);
  stroke(4, 89, 193);
  strokeWeight(10);
  line(299, 27, 256, 45);
  strokeWeight(20);
  line(294, 71, 242, 92);
  stroke(0);
  strokeWeight(8);
  noFill();
  bezier(300, 19, 263, 29, 236, 56, 230, 92);

  //punta de la cola
  fill(252, 236, 1);
  bezier(305, 18, 381, 26, 397, 73, 297, 111);
  line(305, 18, 296, 115);

  //rodilla derecha
  fill(149, 122, 140);
  ellipse(338, 263, 44, 62);
  fill(1, 7, 68);
  quad(257, 244, 324, 244, 341, 291, 274, 341);
  fill(132, 110, 146);
  noStroke();
  circle(304, 242, 38);
  ellipse(313, 296, 42, 36);
  stroke(0);
  line(281, 239, 323, 239);
  line(342, 294, 304, 318);

  //cara
  fill(255, 252, 237);
  beginShape();
  vertex(294, 113);
  vertex(184, 74);
  vertex(120, 4);
  vertex(64, 142);
  vertex(172, 240);
  vertex(283, 239);
  endShape(CLOSE);

  //triangulo morado con circulos
  noStroke();
  fill(165, 134, 168);
  triangle(291, 112, 224, 92, 283, 197);
  fill(44, 32, 70);
  circle(285, 124, 26);
  circle(249, 121, 26);
  circle(270, 158, 26);
  stroke(0);
  strokeWeight(8);
  noFill();
  line(292, 111, 231, 91);
  bezier(229, 92, 236, 127, 258, 164, 287, 199);
  line(286, 201, 294, 113);

  //oreja celeste con rayas
  noStroke();
  fill(85, 155, 155);
  quad(396, 109, 299, 114, 287, 239, 315, 240);
  stroke(4, 67, 144);
  strokeWeight(20);
  line(304, 116, 371, 139);
  line(298, 159, 347, 176);
  line(294, 204, 323, 214);
  stroke(0);
  strokeWeight(8);
  line(399, 107, 295, 111);
  line(294, 112, 283, 239);
  line(283, 239, 313, 239);
  line(314, 239, 399, 108);
  line(339, 156, 431, 219);

  // ojos
  stroke(0);
  strokeWeight(8);
  noFill();
  bezier(241, 178, 262, 194, 292, 197, 330, 186); //ojo derecho
  bezier(181, 147, 154, 139, 131, 124, 115, 94); //ojo izquierdo

  //nariz
  fill(172, 9, 1);
  triangle(217, 182, 193, 169, 188, 201);

  //labios
  stroke(0);
  noFill();
  bezier(188, 207, 195, 243, 225, 243, 243, 223); //labio derecho
  bezier(188, 204, 150, 217, 127, 205, 131, 170); //labio izquierdo

  //pierna derecha
  noStroke();
  fill(245, 219, 186);
  triangle(307, 313, 253, 260, 241, 351);
  ellipse(279, 356, 76, 44);
  noStroke();
  fill(179, 98, 31);
  circle(282, 291, 6);
  circle(292, 310, 6);
  circle(267, 327, 6);
  circle(248, 336, 6);
  circle(272, 352, 6);
  circle(304, 347, 6);
  circle(292, 367, 6);
  stroke(179, 98, 31);
  strokeWeight(2);
  line(291, 294, 274, 306);
  line(294, 297, 274, 311);
  line(252, 319, 266, 337);
  line(250, 325, 262, 340);
  line(272, 363, 291, 338);
  line(276, 365, 295, 340);
  line(302, 354, 317, 357);
  line(301, 358, 313, 361);
  stroke(0);
  strokeWeight(8);
  noFill();
  bezier(276, 277, 298, 291, 324, 324, 275, 332);
  bezier(276, 333, 348, 336, 324, 384, 269, 372);

  //pierna izquierda
  fill(221, 53, 128);
  ellipse(63, 235, 62, 54);
  noStroke();
  fill(203, 118, 0);
  triangle(116, 221, 31, 248, 109, 356);
  ellipse(101, 346, 64, 44);
  fill(144, 109, 148);
  circle(97, 263, 42);
  ellipse(49, 258, 28, 34);
  bezier(56, 284, 72, 286, 81, 296, 82, 316);
  circle(123, 314, 42);
  ellipse (81, 350, 42, 36);
  stroke(0);
  noFill();
  line(95, 228, 37, 247);
  bezier(32, 240, 40, 278, 67, 309, 93, 328);
  bezier(95, 328, 43, 333, 47, 371, 101, 364);

  //brazo izquierdo
  noStroke();
  fill(255, 192, 0);
  triangle(177, 253, 98, 271, 176, 372);
  ellipse(160, 356, 42, 52);
  ellipse(123, 353, 42, 38);
  fill(254, 166, 115);
  ellipse(117, 353, 32, 34);
  stroke(239, 61, 7);
  strokeWeight(12);
  line(125, 266, 174, 281);
  line(115, 287, 176, 305);
  line(132, 316, 174, 328);
  line(131, 342, 176, 355);
  line(129, 364, 168, 376);
  stroke(0);
  strokeWeight(8);
  line(103, 271, 142, 336);
  line(126, 338, 125, 373);
  noFill();
  bezier(140, 336, 84, 324, 94, 397, 142, 366);
  bezier(142, 366, 146, 387, 169, 392, 181, 368);

  //brazo derecho
  fill(83, 150, 142);
  quad(248, 305, 176, 261, 179, 339, 240, 344);
  noStroke();
  fill(185, 136, 6);
  circle(226, 298, 26);
  circle(189, 283, 26);
  circle(195, 319, 26);
  circle(228, 330, 26);
  stroke(0);
  line(177, 280, 180, 339);
  line(246, 306, 239, 342);

  //mano derecha
  noStroke();
  fill(152, 114, 135);
  ellipse(199, 360, 38, 42);
  ellipse(221, 355, 22, 32);
  ellipse(246, 366, 47, 40);
  stroke(0);
  noFill();
  bezier(179, 342, 215, 338, 262, 342, 273, 371);
  bezier(272, 374, 248, 392, 234, 384, 222, 364);
  bezier(221, 362, 209, 391, 186, 392, 179, 343);

  //moño
  fill(218, 169, 0);
  quad(282, 240, 169, 238, 202, 274, 276, 278);
  stroke(1, 3, 70);
  line(196, 263, 209, 242);
  line(214, 272, 231, 243);
  line(236, 274, 254, 242);
  line(257, 275, 274, 244);
  stroke(0);
  line(282, 239, 174, 238);

  fill(179, 2, 8);
  triangle(276, 279, 201, 275, 266, 320);

  fill(100, 124, 20);
  triangle(139, 213, 99, 177, 94, 229);
  stroke(35, 64, 1);
  fill(35, 64, 1);
  line(129, 212, 103, 189);
  circle(106, 218, 12);
  stroke(0);
  line(100, 176, 96, 227);

  fill(56, 26, 10);
  quad(139, 214, 94, 229, 91, 276, 181, 251);
  stroke(249, 230, 169);
  strokeWeight(4);
  fill(249, 230, 169);
  circle(144, 232, 2);
  circle(108, 238, 2);
  circle(132, 245, 2);
  circle(132, 256, 2);
  line(126, 222, 134, 233);
  line(119, 226, 126, 236);
  line(141, 241, 160, 243);
  line(139, 249, 154, 250);
  line(116, 243, 104, 264);
  line(125, 244, 114, 264);

  stroke(0);
  strokeWeight(10);
  fill(179, 2, 10);
  circle(175, 259, 32);

  //bigotes derechos
  stroke(163, 144, 112);
  strokeWeight(2);
  fill(163, 144, 112);
  circle(219, 200, 4);
  noFill();
  bezier(219, 200, 243, 199, 266, 212, 280, 228);
  circle (209, 211, 2);
  bezier(209, 211, 231, 216, 250, 228, 263, 244);
  bezier(201, 217, 220, 229, 230, 242, 241, 270);

  //bigotes izquierdos
  bezier(175, 177, 168, 153, 144, 139, 123, 139);
  bezier(164, 181, 151, 165, 125, 158, 101, 161);
  bezier(161, 190, 139, 177, 113, 176, 91, 188);

  //pera
  fill(139, 113, 138);
  stroke(0);
  strokeWeight(8);
  quad(202, 237, 184, 208, 142, 212, 170, 240);

  popMatrix();

  image(img, 0, 0, 400, 400);
}

void mousePressed() {
  println("X: " + mouseX + ", Y: " + mouseY);
}

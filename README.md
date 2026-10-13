# TP#1 — Dibujo básico y GitHub

## Consigna

Explorar las formas primitivas de dibujo con Processing y las diferentes alternativas de composición que ofrecen el entorno y las coordenadas, para crear un grafismo figurativo, y subirlo a GitHub.

La propuesta de esta comisión es representar una **obra de arte cubista**.

## Requisitos

- Tamaño de canvas: **800 x 400 px**
- Mostrar **ambas imágenes al mismo tiempo**:
  - Imagen original (ejemplo) a la **izquierda**
  - Dibujo generado con Processing a la **derecha**
- Usar **solo instrucciones de dibujo** y la variable correspondiente para `loadImage(..)`

## Estructura del sketch

El sketch usa `pushMatrix()` + `translate(400, 0)` para dibujar toda la obra en la **mitad derecha** del canvas, y luego `image(img, 0, 0, 400, 400)` para pegar la imagen original en la **mitad izquierda**.

```
┌─────────────────────┬─────────────────────┐
│                     │                     │
│   cubismo.jpg       │   dibujo con        │
│   (original)        │   primitivas        │
│                     │                     │
└─────────────────────┴─────────────────────┘
       400 px                400 px
```

## Formas primitivas utilizadas

- `rect()` / `square()` — rectángulos y cuadrados
- `circle()` / `ellipse()` — círculos y elipses
- `triangle()` — triángulos
- `quad()` — cuadriláteros
- `line()` — líneas
- `bezier()` — curvas
- `beginShape()` / `vertex()` / `bezierVertex()` / `endShape()` — formas libres

## Atributos utilizados

- `fill()` — color de relleno
- `noFill()` — sin relleno
- `stroke()` / `noStroke()` — color y sin borde
- `strokeWeight()` — grosor del borde
- `pushMatrix()` / `translate()` / `popMatrix()` — transformaciones

## Archivos

```
tp1/
├── tp1.pde            # sketch de Processing
├── cubismo.jpg        # imagen original de referencia
└── README.md
```

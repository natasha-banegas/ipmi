# Conceptos Básicos de Programación en Processing

## Datos
Son valores o características asociadas a algo. En los sistemas informáticos se representan y almacenan mediante distintos tipos de datos, como números, caracteres o valores booleanos.

**Ejemplos:**
```java
int edad = 20;
float velocidad = 2.5;
boolean activo = true;
```

---

## Variables
Son contenedores o espacios en memoria que nos permiten guardar datos para utilizarlos y modificarlos durante la ejecución de un programa.

Una variable tiene:  
**TIPO DE DATO + NOMBRE + VALOR**

**Por ejemplo:**
```java
int posXCircle = 100;
```
- `int` → tipo de dato.
- `posXCircle` → nombre de la variable.
- `100` → valor almacenado.

---

## Condicionales
Permiten que el programa tome decisiones según si una condición se cumple o no.

La lógica es:  
*Si ocurre o se cumple algo, hacé esto.*

```java
if (condición) {
  acciones;
}
```

La condición produce un resultado:
- `true`  → se ejecutan las acciones
- `false` → no se ejecutan las acciones

También podemos usar:
```java
if (condición) {
  acciones;
} else {
  otras acciones;
}
```

---

## Funciones
Son bloques de instrucciones a los que les asignamos un nombre para poder ejecutarlos cuando los necesitemos.

**Por ejemplo:**
```java
void dibujarObra() {
  // instrucciones para dibujar la obra
}
```

Para ejecutar o llamar a la función:
```java
dibujarObra();
```

---

## Eventos
Son acciones que ocurren mientras el programa está funcionando y que Processing puede detectar.

### Eventos del Mouse
- `mousePressed()` → Se ejecuta cuando un botón del mouse es oprimido.
- `mouseReleased()` → Se ejecuta cuando un botón del mouse es liberado.
- `mouseMoved()` → Se ejecuta cuando el cursor se mueve.
- `mouseDragged()` → Se ejecuta cuando el cursor se mueve mientras un botón del mouse es oprimido.

**Ejemplo:**
```java
println("X: " + mouseX + ", Y: " + mouseY);
```
Para ver las coordenadas.

### Eventos del Teclado
- `keyPressed()` → El código dentro de este bloque se ejecuta cuando una tecla es presionada.
- `keyReleased()` → El código dentro de este bloque se ejecuta cuando una tecla es liberada.

---

## `map()`
Permite convertir un valor de un rango a otro rango de valores.

Tiene 5 parámetros:
```java
map(valor, inicio1, fin1, inicio2, fin2);
```

---

## Ciclo `for`
Se utiliza cuando necesitamos repetir una acción varias veces siguiendo una regla.

```java
for (iniciador; condición; actualización) {
  acciones;
}
```

Tiene tres partes:
1. **INICIADOR** → desde dónde empieza.
2. **CONDICIÓN** → mientras se cumpla, sigue repitiéndose.
3. **ACTUALIZACIÓN** → cómo cambia la variable en cada repetición.

---

## For anidado
Es un ciclo `for` dentro de otro ciclo `for`. Se utiliza para recorrer combinaciones de valores, especialmente estructuras como grillas de columnas × filas.

**Por ejemplo:**
```java
for (int x = 0; x < 10; x++) {
  for (int y = 0; y < 10; y++) {
    // acciones
  }
}
```

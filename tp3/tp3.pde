//Comisión 3 (Dibujo N°24): Arian Imanoni Legajo 125600/9 DNI 40.809.964
//URL VIDEO https://www.youtube.com/watch?v=leUsTgFuR_I

// ===================
// VARIABLES GLOBALES
// ===================
PImage imgReferencia;
float escalaInteractiva = 1.0;

void setup() {
  size(800, 400);
  imgReferencia = loadImage("24.jpeg");
}

void draw() {
  background(255);

  float anchoColumna = 400.0 / 4.5;

  // ====================
  // CICLOS FOR ANIDADOS
  // ====================

  for (int col = 0; col < 6; col++) {
    float xBase = 400.0 + (col * anchoColumna) + (anchoColumna / 2.0);

    for (int fila = -1; fila <= 10; fila++) {

      float yBase = fila * 53.5;

      if (col % 2 != 0) {
        yBase += 22.00;
      }
      
      float tamDinamico = calcularTamañoInteractivo(xBase, yBase);
      dibujarMóduloCompleto(xBase, yBase, tamDinamico);
    }
  }

  // ====================================================
  // MÁSCARA (para poner la imagen arriba de los rombos)
  // ====================================================

  rectMode(CORNER);

  if (imgReferencia != null) {
    image(imgReferencia, 0, 0, 400, 400);
  }
}

// ====================================================================
// FUNCIÓN PROPIA QUE RETORNA UN VALOR: Calcula el tamaño con el mouse
// ====================================================================

float calcularTamañoInteractivo(float x, float y) {

  float distancia = dist(mouseX, mouseY, x, y);

  float tamMapeado = map(distancia, 0, 300, 42, 60);

  return constrain(tamMapeado * escalaInteractiva, 25, 75);
}

// ====================================================================
// FUNCIÓN PROPIA QUE NO RETORNA VALOR: Dibuja las figuras geométricas
// ====================================================================

void dibujarMóduloCompleto(float x, float y, float tam) {
  pushMatrix();
  translate(x, y);
  rotate(radians(45));

  rectMode(CENTER);
  noStroke();

  fill(0);
  rect(19, -38, tam * 0.89, tam * 0.90);

  fill(190);
  stroke(120);
  strokeWeight(2);
  rect(-139, -107, tam, tam);

  popMatrix();
}

// ============================
// INTERACTIVIDAD POR TECLADO
// ============================

void keyPressed() {
  if (keyCode == UP) {
    escalaInteractiva += 0.05;
  } else if (keyCode == DOWN) {
    escalaInteractiva -= 0.05;
  }
  if (key == 'r' || key == 'R') {
    escalaInteractiva = 1.0;
  }
}

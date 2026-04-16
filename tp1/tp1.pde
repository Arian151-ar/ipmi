// Imanoni Arian 125600/9, Comsión N°3 04/2026, dibujo mural calle 39 entre 2 y 3

PImage foto;

void setup() {
  size(800, 400);
  foto = loadImage("mural.jpeg");
  noLoop();
}

void draw() {
  background(60, 68, 81);
  image(foto, 0, 0, 400, 400);
  pushMatrix();
  translate(400, 0);

  // PARTE SUPERIOR Y PISO

  stroke(0);
  strokeWeight(2);

  fill(220, 220, 220);
  rect(0, 0, 400, 60);

  fill(172, 167, 161);
  rect(0, 350, 400, 150);

  // TALLOS

  stroke(77, 146, 143);
  strokeWeight(10);
  line(175, 135, 260, 345);

  stroke(77, 146, 143);
  strokeWeight(10);
  line(60, 250, 60, 345);

  stroke(77, 146, 143);
  strokeWeight(10);
  line(320, 240, 360, 345);

  // PÉTALOS FLOR CENTRAL
  stroke(0);
  strokeWeight(2);
  fill(206, 213, 221);
  ellipse(160, 110, 250, 15);
  ellipse(160, 180, 20, 180);
  bezier(160, 110, 60, 300, 20, 250, 160, 110);
  bezier(160, 110, 260, 300, 320, 250, 160, 110);
  
  bezier(160, 110, 80, 150, 40, 220, 160, 110);
  bezier(160, 110, 60, 250, 20, 300, 160, 110);
  bezier(160, 110, 80, 300, 40, 350, 160, 110);

  bezier(160, 110, 120, 350, 150, 380, 160, 110);
  bezier(160, 110, 150, 400, 170, 400, 160, 110);
  bezier(160, 110, 170, 380, 200, 350, 160, 110);

  bezier(160, 110, 240, 300, 280, 350, 160, 110);
  bezier(160, 110, 260, 250, 300, 300, 160, 110);
  bezier(160, 110, 240, 150, 280, 220, 160, 110);

  bezier(160, 110, 100, 200, 140, 280, 160, 110);
  bezier(160, 110, 180, 200, 220, 280, 160, 110);
  bezier(160, 110, 130, 300, 190, 300, 160, 110);


  // PÉTALOS FLOR IZQUIERDA

  bezier(60, 230, -40, 300, 30, 340, 80, 230);
  bezier(60, 230, -20, 280, 0, 340, 60, 230);
  bezier(60, 230, -20, 140, 0, 240, 60, 230);

  bezier(60, 230, 30, 360, 90, 360, 60, 230);
  bezier(60, 230, 10, 390, 40, 390, 60, 230);
  bezier(60, 230, 80, 390, 110, 390, 60, 230);

  bezier(60, 230, 140, 350, 200, 320, 60, 230);
  bezier(60, 230, 150, 280, 180, 250, 60, 230);
  bezier(60, 230, 120, 220, 210, 260, 60, 230);
  bezier(60, 230, 100, 380, 160, 360, 60, 230);


  // PÉTALOS FLOR DERECHA

  ellipse(320, 220, 210, 12);
  ellipse(320, 270, 12, 135);

  bezier(320, 220, 240, 280, 280, 340, 320, 220);
  bezier(320, 220, 210, 230, 260, 300, 320, 220);
  bezier(320, 220, 230, 180, 270, 250, 320, 220);

  bezier(320, 220, 290, 360, 310, 360, 320, 220);
  bezier(320, 220, 315, 390, 345, 390, 320, 220);
  bezier(320, 220, 340, 350, 360, 350, 320, 220);

  bezier(320, 220, 380, 240, 420, 320, 320, 220);
  bezier(320, 220, 360, 280, 410, 330, 320, 220);
  bezier(320, 220, 390, 200, 400, 260, 320, 220);
  bezier(320, 220, 330, 370, 400, 340, 320, 220);


  // CÍRCULOS AMARILLOS
  stroke(0);
  strokeWeight(2);

  // Flor Central
  fill(166, 139, 34);
  ellipse(160, 110, 80, 60);

  noStroke();
  fill(123, 89, 79);
  ellipse(160 + 5, 110 + 5, 60, 40);

  // Flor Izquierda
  stroke(0);
  fill(166, 139, 34);
  ellipse(60, 230, 60, 40);

  noStroke();
  fill(123, 89, 79);
  ellipse(60 + 4, 230 + 4, 45, 25);

  // Flor Derecha
  stroke(0);
  fill(166, 139, 34);
  ellipse(320, 220, 60, 40);

  noStroke();
  fill(123, 89, 79);
  ellipse(320 + 4, 220 + 4, 45, 25);
}

// Imanoni Arian 125600/9, Comsión N°3. TP2 "Variables y Condicionales"

PImage logo, system1, system2, system3, system4, system5, system6, system7;
int pantalla = 0;
int tiempoReferencia;
float imagenX;
float textoY;
PFont fuenteTitulo, fuenteCuerpo;

void setup() {
  size(640, 480);
  logo = loadImage("logo.png");
  system1 = loadImage("system1.jpg");
  system2 = loadImage("system2.jpg");
  system3 = loadImage("system3.jpg");
  system4 = loadImage("system4.jpg");
  system5 = loadImage("system5.jpg");
  system6 = loadImage("system6.jpg");
  system7 = loadImage("system7.jpg");

  fuenteTitulo = createFont("Impact", 38);
  fuenteCuerpo = createFont("Arial", 22);
  resetAnimaciones();
}

    //Pantalla 0 Inicio

void draw() {
  background(15, 15, 15);
  if (pantalla == 0) {
    image(logo, width/2 - 270, 80, 540, 120);

    int botonX = 220;
    int botonY = 280;
    int botonAncho = 200;
    int botonAlto = 50;

    if (mouseX > botonX && mouseX < botonX + botonAncho && mouseY > botonY && mouseY < botonY + botonAlto) {
      fill(255, 0, 0);
      if (mousePressed) {
        pantalla = 1;
        tiempoReferencia = millis();
        resetAnimaciones();
      }
    } else {
      fill(100, 20, 20);
    }

    rect(botonX, botonY, botonAncho, botonAlto, 8);
    fill(255);
    textFont(fuenteCuerpo);
    textAlign(CENTER, CENTER);
    text("INICIO", width/2, botonY + botonAlto/2);
  } else if (pantalla == 1) {

    // Pantalla 1 Origen

    if (millis() - tiempoReferencia > 9000) {
      pantalla = 2;
      tiempoReferencia = millis();
      resetAnimaciones();
    }

    if (imagenX < 15) imagenX += 12;
    if (textoY > 100) textoY -= 10;

    image(system1, imagenX, 80, 300, 320);

    textAlign(LEFT);
    textFont(fuenteTitulo);
    fill(200, 30, 30);
    text("ORIGEN", 330, textoY);

    textFont(fuenteCuerpo);
    fill(240);
    textLeading(24);
    text("Formados en Glendale, California, Estados Unidos en 1994. La banda irrumpió en la escena con una propuesta única y disruptiva que combinó metal alternativo, rock experimental y líricas de fuerte contenido social.", 330, textoY + 50, 270, 300);
  } else if (pantalla == 2) {
    
    // Pantalla 2 Identidad
  
    if (millis() - tiempoReferencia > 9000) {
      pantalla = 3;
      tiempoReferencia = millis();
      resetAnimaciones();
    }

    if (imagenX < 15) imagenX += 12;
    if (textoY > 100) textoY -= 10;

    image(system2, imagenX, 80, 300, 320);

    textAlign(LEFT);
    textFont(fuenteTitulo);
    fill(200, 30, 30);
    text("RAÍCES E IDENTIDAD", 330, textoY);

    textFont(fuenteCuerpo);
    fill(240);
    textLeading(24);
    text("El alma de la agrupación está directamente ligada a su ascendencia armenia. A través de su música y su convocatoria global, exigen activamente el reconocimiento internacional y justicia por el Genocidio Armenio.", 330, textoY + 50, 270, 300);
  } else if (pantalla == 3) {
   
    // Pantalla 3 Serj y Daron
    
    if (millis() - tiempoReferencia > 9000) {
      pantalla = 4;
      tiempoReferencia = millis();
      resetAnimaciones();
    }

    if (imagenX < 15) imagenX += 12;
    if (textoY > 100) textoY -= 10;

    image(system3, imagenX, 80, 340, 280);

    textAlign(LEFT);
    textFont(fuenteTitulo);
    fill(200, 30, 30);
    text("ALQUIMIA VOCAL", 370, textoY);

    textFont(fuenteCuerpo);
    fill(240);
    textLeading(24);
    text("Serj Tankian (voz) y Daron Malakian (guitarra) forman uno de los dúos más dinámicos del rock. Mientras Serj aporta un rango vocal operístico de 4 octavas y líricas poéticas,  mientras Daron inyecta la agresividad melódica y los riffs frenéticos.", 370, textoY + 50, 270, 300);
  } else if (pantalla == 4) {
    
    // Pantalla 4 Shavo y John
    
    if (millis() - tiempoReferencia > 9000) {
      pantalla = 5;
      tiempoReferencia = millis();
      resetAnimaciones();
    }

    if (imagenX < 15) imagenX += 12;
    if (textoY > 100) textoY -= 10;

    image(system4, imagenX, 80, 340, 280);

    textAlign(LEFT);
    textFont(fuenteTitulo);
    fill(200, 30, 30);
    text("PULSO ARMÉNICO", 370, textoY);

    textFont(fuenteCuerpo);
    fill(240);
    textLeading(24);
    text("Shavo Odadjian (bajo) y John Dolmayan (batería) son la base técnica de SOAD. Shavo aporta un pulso profundo, mientras John ejecuta polirritmos complejos con una precisión matemática que fusiona el thrash metal con música folclórica.", 370, textoY + 50, 270, 300);
  } else if (pantalla == 5) {
  
    // Pantalla 5 Disco
  
    if (millis() - tiempoReferencia > 9000) {
      pantalla = 6;
      tiempoReferencia = millis();
      resetAnimaciones();
    }

    if (imagenX < 15) imagenX += 12;
    if (textoY > 100) textoY -= 10;

    image(system5, imagenX, 80, 320, 320);

    textAlign(LEFT);
    textFont(fuenteTitulo);
    fill(200, 30, 30);
    text("IMPACTO GLOBAL", 350, textoY);

    textFont(fuenteCuerpo);
    fill(240);
    textLeading(24);
    text("Su segundo álbum de estudio, Toxicity (2001), vendió más de 12 millones de copias a nivel mundial y alcanzó el puesto número 1 varias listas. Comienzan a ser la banda sonora de la resistencia global a principios del milenio.", 350, textoY + 50, 270, 300);
  } else if (pantalla == 6) {
   
    // Pantalla 6 Activismo
  
    if (millis() - tiempoReferencia > 9000) {
      pantalla = 7;
      tiempoReferencia = millis();
      resetAnimaciones();
    }

    if (imagenX < 15) imagenX += 12;
    if (textoY > 100) textoY -= 10;

    image(system6, imagenX, 80, 300, 320);

    textAlign(LEFT);
    textFont(fuenteTitulo);
    fill(200, 30, 30);
    text("MÁS QUE MÚSICA", 330, textoY);

    textFont(fuenteCuerpo);
    fill(240);
    textLeading(24);
    text("Caracterizados por un fuerte componente político. Sus canciones exponen crudas críticas hacia el sistema carcelario privado, el armamentismo, el consumismo y las consecuencias de las intervenciones bélicas globales.", 330, textoY + 50, 270, 300);
  } else if (pantalla == 7) {
   
    // Pantalla 7 Reinicio
 

    if (imagenX < 15) imagenX += 12;
    if (textoY > 100) textoY -= 10;

    image(system7, imagenX, 80, 300, 320);

    textAlign(LEFT);
    textFont(fuenteTitulo);
    fill(200, 30, 30);
    text("¡SYSTEM ERROR!", 330, textoY);

    int botonResetX = 330;
    int botonResetY = 220;
    int botonResetAncho = 200;
    int botonResetAlto = 45;

    if (mouseX > botonResetX && mouseX < botonResetX + botonResetAncho && mouseY > botonResetY && mouseY < botonResetY + botonResetAlto) {
      fill(255, 0, 0);
      if (mousePressed) {
        pantalla = 0; 
        resetAnimaciones();
        delay(200);
      }
    } else {
      fill(100, 20, 20);
    }

    rect(botonResetX, botonResetY, botonResetAncho, botonResetAlto, 8);

    fill(255);
    textAlign(CENTER, CENTER);
    textFont(fuenteCuerpo);
    text("RESTART", botonResetX + botonResetAncho/2, botonResetY + botonResetAlto/2);
  }
}

void resetAnimaciones() {
  imagenX = -320;
  textoY = 520;
}

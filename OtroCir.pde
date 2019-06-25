class OtroCir {
  //posiciones
  float x;
  float y;
  //diametro
  float d;
  //velocidad
  float xVel;
  float yVel; 
  float tam2;

  //contructor
  OtroCir(float posX, float posY) {
    x = posX;
    y = posY;

    d= 40;
    xVel = random(-3, 10);
    yVel = random(-3, 10);
    tam2= random(50,120);
  }

  //metodos
  //posicion
  void velocidad() {
    x += xVel;
    y += yVel;
  }

  //limites, rebotes
  void bordes() {
    if ((x<0+d) || (x>width-d)) {
      xVel = -xVel;
    }  
    if ((y<0+d) || (y>height-d)) {
      yVel = -yVel;
    }
  }

  //dibujo
  void dibujo() { 
    pushStyle();
    fill(255, 90, 10);
    noStroke();
    ellipse( x, y, tam2, tam2);
    popStyle();
  }

  //si doy click en una mosca, desaparece y el contador sube
  void click() {
    if (mousePressed) { 
      float distance = dist(mouseX, mouseY, x, y);
      //si esta dentro del objeto vaquita
      if (distance<d) {
        //desaparece, posicion fuera de la pantalla
        //xVel = 0;
        //yVel = 0;
        //x = -1000;
        //puntaje --
        // contador --;
        estado = "perdio1";
        //valor maximo del contador, se almacena en hightScore
        highScore = max(contador, highScore);
      }
    }
  }
}
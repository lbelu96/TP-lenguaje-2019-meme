class Circulo {
  //posiciones
  float x;
  float y;
  //diametro
  float d;
  //velocidad
  float xVel;
  float yVel; 
  float tam;

  //contructor
  Circulo(float posX, float posY) {
    x = posX;
    y = posY;
    
    d=40;
    xVel = random(-3, 6);
    yVel = random(-3, 6);
    tam = random(50, 120);
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
    fill(255,0,0);
    noStroke();
    ellipse( x, y,tam,tam);
    popStyle();
    
  }

  //si doy click en una mosca, desaparece y el contador sube
  void click() {
    if (mousePressed) { 
      float distance = dist(mouseX, mouseY, x, y);
      //si esta dentro del objeto mosca
      if (distance<40 ) {
        //desaparece, posicion fuera de la pantalla
        xVel = 0;
        yVel = 0;
        x = -1000;
        //puntaje ++
        contador++;
        //valor maximo del contador, se almacena en hightScore
        highScore = max(contador, highScore);
        
      }
      
      }
    
  }
  
  
  
}
  
  
 

  
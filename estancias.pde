//Dibujar Circulos


//NIVEL 1--------
void mostrarPantallaJugando() {
  for (int i=0; i<CirculoArray.length; i+=20) {  
    CirculoArray[i].velocidad();
    CirculoArray[i].bordes();
    CirculoArray[i].dibujo();  
    CirculoArray[i].click();
  }

  contador();
  tiempo();
  gameOver();
}

void mostrarPantallaGano1() {
  for (int i=0; i<CirculoArray.length; i++) {
    CirculoArray[i] = new Circulo(300, 300);
  }
  mostrarPantallaNivel2();
  passedTime = 0;
}

//NIVEL 2-----------------------------------
void mostrarPantallaJugando2() {
  for (int i=0; i<CirculoArray.length; i+=8) {  
    CirculoArray[i].velocidad();
    CirculoArray[i].bordes();
    CirculoArray[i].dibujo();  
    CirculoArray[i].click();
  }
  //for (int i=0; i<OtroCirArray.length; i++) {  
  //  OtroCirArray[i].velocidad();
  //  OtroCirArray[i].bordes();
  //  OtroCirArray[i].dibujo();  
  //  OtroCirArray[i].click();
  //}

  gameOver2();
  contador();
  tiempo();
}

void mostrarPantallaGano2() {
  for (int i=0; i<CirculoArray.length; i++) {
    CirculoArray[i] = new Circulo(300, 300);
  }
  mostrarPantallaNivel3();
  passedTime = 0;
}

void mostrarPantallaNivel2() {
  estado = "jugando2";
}



//NIVEL 3-----------------------------------
void mostrarPantallaJugando3() {
  for (int i=0; i<CirculoArray.length; i+=4) {  
    CirculoArray[i].velocidad();
    CirculoArray[i].bordes();
    CirculoArray[i].dibujo();  
    CirculoArray[i].click();
  }
  for (int i=0; i<OtroCirArray.length; i+=8) {  
    OtroCirArray[i].velocidad();
    OtroCirArray[i].bordes();
    OtroCirArray[i].dibujo();  
    OtroCirArray[i].click();
  }

  gameOver3();
  contador();
  tiempo();
}
void mostrarPantallaNivel3() {
  estado = "jugando3";
}
void mostrarPantallaGano3() {
  for (int i=0; i<CirculoArray.length; i++) {
    CirculoArray[i] = new Circulo(300, 300);
  }
  mostrarPantallaNivel4();
  passedTime = 0;
}


//NIVEL 4-------------------------
void mostrarPantallaJugando4() {
  for (int i=0; i<CirculoArray.length; i+=2) {  
    CirculoArray[i].velocidad();
    CirculoArray[i].bordes();
    CirculoArray[i].dibujo();  
    CirculoArray[i].click();
  }
  for (int i=0; i<OtroCirArray.length; i+=5) {  
    OtroCirArray[i].velocidad();
    OtroCirArray[i].bordes();
    OtroCirArray[i].dibujo();  
    OtroCirArray[i].click();
  }
  for (int i=0; i<OtroCir2Array.length; i+=2) {  
    OtroCir2Array[i].velocidad();
    OtroCir2Array[i].bordes();
    OtroCir2Array[i].dibujo();  
    OtroCir2Array[i].click();
  }

  gameOver4();
  contador();
  tiempo();
}
void mostrarPantallaNivel4() {
  estado = "jugando4";
}

void mostrarPantallaGano4() {
  for (int i=0; i<CirculoArray.length; i++) {
    CirculoArray[i] = new Circulo(300, 300);
  }
  mostrarPantallaNivel5();
  passedTime = 0;
}




//NIVEL 5--------------------------
void mostrarPantallaJugando5() {
  for (int i=0; i<CirculoArray.length; i++) {  
    CirculoArray[i].velocidad();
    CirculoArray[i].bordes();
    CirculoArray[i].dibujo();  
    CirculoArray[i].click();
  }
  for (int i=0; i<OtroCirArray.length; i++) {  
    OtroCirArray[i].velocidad();
    OtroCirArray[i].bordes();
    OtroCirArray[i].dibujo();  
    OtroCirArray[i].click();
  }
  for (int i=0; i<OtroCir2Array.length; i++) {  
    OtroCir2Array[i].velocidad();
    OtroCir2Array[i].bordes();
    OtroCir2Array[i].dibujo();  
    OtroCir2Array[i].click();
  }

  gameOver5();
  contador();
  tiempo();
}
void mostrarPantallaNivel5() {
  estado = "jugando5";
}

//void mostrarPantallaGano5() {
//  for (int i=0; i<CirculoArray.length; i++) {
//    CirculoArray[i] = new Circulo(300, 300);
//  }
//  mostrarPantallaNivel4();
//  passedTime = 0;
//}


//PANTALLA PERDIO
void mostrarPantallaPerdio1() {
  for (int i=0; i<CirculoArray.length; i++) {
    CirculoArray[i] = new Circulo(300, 300);
  }
  highScore=0;
  //imageMode(CORNER);
  //image(perdiste,0,0);
  background(0);
  pushStyle();
  noStroke();
  fill(255);
  ellipse(width/2, height/2, 100, 100);
  popStyle();

}
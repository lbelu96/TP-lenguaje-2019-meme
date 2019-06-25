void iniciar() {
 
  estado = "inicio";

}

void niveles() {

  //NIVEL 1------------
  if ( estado == "inicio" ) {
    mostrarPantallaJugando();

  } else if ( estado == "perdio1" ) {
    mostrarPantallaPerdio1();
  } else if ( estado == "gano1" ) {
    mostrarPantallaGano1();
  }


  //NIVEL 2------------
  else if ( estado == "jugando2" ) {
    mostrarPantallaJugando2();
  } else if ( estado == "gano2" ) {
    mostrarPantallaGano2();
  } else if ( estado == "jugando3" ) {
    mostrarPantallaJugando3();
  }


  //NIVEL 3------------
  else if ( estado == "jugando3" ) {
    mostrarPantallaJugando3();
  } else if ( estado == "gano3" ) {
    mostrarPantallaGano3();
  } else if ( estado == "jugando4" ) {
    mostrarPantallaJugando4();
  }

//NIVEL 4--------------

  else if ( estado == "jugando4" ) {
    mostrarPantallaJugando4();
  } else if ( estado == "gano4" ) {
    mostrarPantallaGano4();
  } else if ( estado == "jugando5" ) {
    mostrarPantallaJugando5();
  }
}



//GAME OVER--------------
void gameOver() {
  //if ( highScore <= 18 /*&& passedTime == totalTime*/) {
  //  estado = "perdio1";
  //}
  if ( highScore >= 1 /*&& passedTime == 300*/) {
    estado = "gano1";
  }
}
void gameOver2() {
  //if ( highScore <= 25 && passedTime == totalTime) {
  //  estado = "perdio1";
  //}
  if ( highScore >= 4 /*&& passedTime == totalTime*/) {
    estado = "gano2";
  }
}
void gameOver3() {
  //if ( highScore <= 25 /*&& passedTime == totalTime*/) {
  //  estado = "perdio1";
  //}
  if ( highScore >= 9/* && passedTime == totalTime*/) {
    estado = "gano3";
  }
}
void gameOver4() {
  //if ( highScore <= 25 /*&& passedTime == totalTime*/) {
  //  estado = "perdio1";
  //}
  if ( highScore >= 19 /*&& passedTime == totalTime*/) {
    estado = "gano4";
  }
}
void gameOver5() {
  //if ( highScore <= 25 /*&& passedTime == totalTime*/) {
  //  estado = "perdio1";
  //}
  if ( highScore >= 35 /*&& passedTime == totalTime*/) {
    estado = "gano5";
  }
}


//GAME OVER--------------

//CONTADOR
void contador() { 
  fill(0);
  text("Puntaje: "+highScore, 10, 20);
}

//tiempo en pantalla
void tiempo() {
  fill(0);
  passedTime ++;
  text("Tiempo: "+passedTime, 450, 20);
} 
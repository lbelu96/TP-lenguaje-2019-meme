//CODIGO CON 3 NIVELES / ENEMIGOS EN EL 3ER NIVEL / 
//CANTIDAD DE ENEMIGOS NIVEL 1 EN MOSTRAR PANTALLA JUGANDO, DESPUES MODIFICAR GAMEOVER AGREGAR LEVELS// TIEMPO DESACTIVAR EN GAMEOVER


int cir=20;
int ocir=15;
int ocir2=10;

Circulo[] CirculoArray = new Circulo[cir];
OtroCir[] OtroCirArray = new OtroCir[ocir];
OtroCir2[] OtroCir2Array = new OtroCir2[ocir];


String estado;
//variables
int contador;
//puntaje + alto al terminarse el tiempo
int highScore;
//Tiempo
int passedTime;
int savedTime;
int totalTime = 800;


void setup() {
  size(600, 800);
  iniciar();
  contador = 0;
  highScore =0;
  passedTime = 0;
  smooth();
  savedTime = millis();
  for (int i=0; i<CirculoArray.length; i++) {
    CirculoArray[i] = new Circulo(300, 300);
  }
  //generador de vaquitas, lenght= numero maximo
  for (int i=0; i<OtroCirArray.length; i++) {
    OtroCirArray[i] = new OtroCir(300, 300);
  }
  for (int i=0; i<OtroCir2Array.length; i++) {
    OtroCir2Array[i] = new OtroCir2(300, 300);
  }
}

void draw() {
  background(255);
  println(estado);
  niveles();

}

void mousePressed() {

  //cuando doy click en las moscas/vaquitas
  if ( estado == "jugando") {
    for (int i=0; i<CirculoArray.length; i++) {  
      CirculoArray[i].click();
    }
  } else if ( estado == "jugando2") {
    for (int i=0; i<CirculoArray.length; i++) {  
      CirculoArray[i].click();
    }
    for (int i=0; i<OtroCirArray.length; i++) {  
      OtroCirArray[i].click();
    }
  } else if ( estado == "jugando3") {
    for (int i=0; i<CirculoArray.length; i++) {  

      CirculoArray[i].click();
    }
    for (int i=0; i<OtroCirArray.length; i++) {  
      OtroCirArray[i].click();
    }
  }
  if (estado=="perdio1" && mouseX>300 && mouseX<500 && mouseY >200 && mouseY<400) {
    estado="inicio";
      setup();
  }
}
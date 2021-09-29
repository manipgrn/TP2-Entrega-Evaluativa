import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioSample agarrar_fruta; // "AudioSample" como sonidos cortos
AudioSample agarrar_objeto;
AudioSample rataa;
AudioSample superfruta;

AudioSample caja;
AudioSample frutaPiso;
AudioSample objetoPiso;

AudioPlayer ganar; // "AudioPlayer" como sonidos largos
AudioPlayer fondoo;
AudioPlayer perder;

//======================================================

import oscP5.*;
OscP5 oscP5;

int found;
PVector poseOrientation = new PVector();
PVector cursorPosition = new PVector();

float speed = 100;

Personaje perso;
Canasta can;

String estado;

//======================================================

import fisica.*;

FWorld mundo;

FBox canasta;
FBox cajas;
FBox piso;
FBox limites;

FCircle rata;


PImage fondo;
PImage fondoCarga;

PImage frutaExpl;

float rotacion;
float diamBala = 52;
float velocidad = 320;
float anguloIzq = 6;
float anguloDer = 4;

float anguloIzqRata = 0.7;
float anguloDerRata = 3;

int punto = 0;
int vida = 3;

PFont fuente;

float canX = width/2+500;
float canY = height+575;

float xT = width/2;
float yT = height/2;

int rango;
int cantFrutas;

int marcaDelTiempo;
//======================================================

void setup() {

  size(1300, 800);


  minim = new Minim(this);
  
  agarrar_fruta = minim.loadSample("agarrasteFruta.mp3", 512);
  agarrar_objeto = minim.loadSample("agarrar_objeto.mp3", 512);
  rataa = minim.loadSample("rata.mp3", 512);
  superfruta = minim.loadSample("superfruta.mp3", 512);
  
  caja = minim.loadSample("POP3.mp3", 512);
  frutaPiso = minim.loadSample("frutaPiso.mp3", 512);  
  objetoPiso = minim.loadSample("objetoPiso.mp3", 512);    
  
  ganar = minim.loadFile("ganaste.mp3", 2048);
  fondoo = minim.loadFile("fondo2.mp3", 2048);
  perder = minim.loadFile("perdiste.mp3", 2048);

  oscP5 = new OscP5(this, 8338);
  oscP5.plug(this, "found", "/found");
  oscP5.plug(this, "poseOrientation", "/pose/orientation");

  estado = "portada";

  Fisica.init(this);
  mundo = new FWorld();

  perso = new Personaje(80, 150);
  perso.inicializar(width/2, height/2+260);

  can = new Canasta(90, 2);
  can.inicializar(width/2, height*0.40);

  frutaExpl = loadImage("explosion.png");

  fondo = loadImage("fondo.png");
  fondo.resize(1300, 800);

  fondoCarga = loadImage("fondoCarga.png");
  fondoCarga.resize(1300, 800);

  fuente = loadFont ("Yellowtail-48.vlw");
  textFont(fuente);

  piso();

  limites();

  Caja();
}//Setup


//======================================================

void draw() {

  frameRate(300);

  //int currentTime = millis();
  

  image(fondoCarga, 0, 0);

  if (estado == "juego") {

    image(fondo, 0, 0);
    fondoo.play();
    // HUD
    text ("Frutas: "+punto, 534, 80);
    text ("Vidas: "+vida, 672, 80);
    textSize(28);
    fill(color(#474444));


    perso.actualizar();
    can.actualizar();
    mundo.step();
    mundo.draw();


    Frutas();

    Objetos();

    rata();

    // ESTADOS

    if (vida <= 0) {
      perso.attachImage(loadImage("personaje3.png"));
      text("Perdiste", 650, 75);
      textSize(0.1);
      textAlign(CENTER);
      fill(255);
      perder.play();
    }
    if (punto >= 10) {
      perso.attachImage(loadImage("personaje2.png"));
      text("Ganaste", 650, 75);
      textSize(0.1);
      textAlign(CENTER);
      fill(255);
      ganar.play();
    }
  }


  if (found > 0) { // personaje
    float umbralDerecha = 0.1;
    float umbralIzquierda = -0.1;

    if (poseOrientation.y >= umbralDerecha ) {
      perso.derPresionado = true;
    } else if ((poseOrientation.y < umbralDerecha && poseOrientation.y > 0)) {
      perso.derPresionado = false;
    }
    if (poseOrientation.y <= umbralIzquierda ) {
      perso.izqPresionado = true;
    } else if ((poseOrientation.y > umbralIzquierda && poseOrientation.y > umbralDerecha)) {
      perso.izqPresionado = false;
    }
  }

  if (found > 0) {  // canasta
    float umbralDerecha = 0.1;
    float umbralIzquierda = -0.1;

    if (poseOrientation.y >= umbralDerecha ) {
      can.derPresionado = true;
    } else if ((poseOrientation.y < umbralDerecha && poseOrientation.y > 0)) {
      can.derPresionado = false;
    }
    if (poseOrientation.y <= umbralIzquierda ) {
      can.izqPresionado = true;
    } else if ((poseOrientation.y > umbralIzquierda && poseOrientation.y > umbralDerecha)) {
      can.izqPresionado = false;
    }
  }


  // Cambio de imagen de CANASTA
  /* GANANDO PUNTOS */
  if (punto >= 3 && punto <= 6) {
    can.attachImage(loadImage("frutas1.png"));
  }
  if (punto >= 6 && punto <= 9) {
    can.attachImage(loadImage("frutas2.png"));
  }
  if (punto >= 9 && punto <= 10) {
    can.attachImage(loadImage("frutas3.png"));
  }
}//Draw

//======================================================

public void found(int i) {
  found = i;
}
public void poseOrientation(float x, float y, float z) {
  poseOrientation.set(x, y, z);
}


//--------------------------------------------------
//--------------------------------------------------


void contactStarted(FContact contacto) {

  FBody cuerpo1 = contacto.getBody1();
  FBody cuerpo2 = contacto.getBody2();

  String nombre1 = conseguirNombre (cuerpo1);
  String nombre2 = conseguirNombre (cuerpo2);


  if (nombre1 == "canasta" && nombre2 == "bala") {
    println("Agarraste FRUTA");
    agarrar_fruta.trigger();
    mundo.remove(cuerpo2);
    punto+=1;
    perso.reanudar();
    can.reanudar();
    
  } else if (nombre1 == "canasta" && nombre2 == "objeto") {
    println("Agarraste OBJETO");
    agarrar_objeto.trigger();
    mundo.remove(cuerpo2);
    vida-=1;
    perso.reanudar();
    can.reanudar();
  }


  if (nombre1 == "piso" && nombre2 == "bala") {  //---------------------------------  Frutas con explosion
    frutaPiso.trigger();
    cuerpo2.setName("explosion");
    cuerpo2.setRotatable(false);
    cuerpo2.setFriction(1);
    cuerpo2.attachImage(loadImage("explosion2.png"));
    
  } else if (nombre1 == "piso" && nombre2 == "explosion"){
    mundo.remove(cuerpo2);
    
    
  } else if (nombre1 == "piso" && nombre2 == "objeto") {  
    mundo.remove(cuerpo2);
    objetoPiso.trigger();
        
  } 
  
//------------------------------    
  if (nombre1 == "caja" && nombre2 == "bala") {
  caja.trigger();
  } 
  else if (nombre1 == "caja" && nombre2 == "objeto") {
  caja.trigger();
  }   
//------------------------------    
  
  
  else if (nombre1 == "personaje" && nombre2 == "rata") {
    println("CUIDADO CON LA RATA");
    mundo.remove(cuerpo2);
    vida-=1;
    marcaDelTiempo = millis();
    println( "-------> " + marcaDelTiempo );
    
    perso.inmovilizado();  
    
    can.inmovilizado();  
    
    
  } else if (nombre1 == "pisoRata" && nombre2 == "rata") {
    mundo.remove(cuerpo2);
  }
  
  if (nombre1 == "explosion" && nombre2 == "personaje") {
    mundo.remove(cuerpo2);
  }

  if (nombre1 == "bala" && nombre2 == "rata") {
    mundo.remove(cuerpo2);
  }
  if (nombre1 == "objeto" && nombre2 == "rata") {
    mundo.remove(cuerpo2);
  }


  if (nombre1 == "canasta" && nombre2 == "coco") {
    superfruta.trigger();
    mundo.remove(cuerpo2);
    punto+=2;
  } else if (nombre1 == "piso" && nombre2 == "coco") {
    mundo.remove(cuerpo2);
  }
}


//--------------------------------------------------
//--------------------------------------------------


void keyPressed() {
  if (key == 'a') {
    perso.izqPresionado = true;
    can.izqPresionado = true;
  }
  if (key == 'd') {
    perso.derPresionado = true;
    can.derPresionado = true;
  }

  if (estado == "portada") {

    if (key == ENTER) {
      estado = "juego";

      perso.inicializar(width/2, height/2+270);
      mundo.add(perso);

      can.inicializar(width/2, height/2+200);
      mundo.add(can);
    }
  }
}

//--------------------------------------------------
//--------------------------------------------------

void keyReleased() {
  if (key =='a') {
    perso.izqPresionado = false;
    can.izqPresionado = false;
  }
  if (key =='d') {
    perso.derPresionado = false;
    can.derPresionado = false;
  }
}

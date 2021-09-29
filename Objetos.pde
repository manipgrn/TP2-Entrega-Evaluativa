
void Objetos(){

 // GENERADOR OBJETOS En VENTANAS:
 
 // izq arriba
    if (frameCount % 400 == 0 && frameCount < 10000) {
  FCircle objeto = new FCircle (diamBala);
  objeto.setPosition(250,150);
  objeto.setRotation(random(10,350));
  objeto.setName("objeto");
  objeto.setGrabbable(false);  
  float vx = velocidad * cos(anguloIzq);
  float vy = velocidad * sin(anguloIzq);  
  
  objeto.setVelocity (vx,vy);
  
    rango = int (random(8));
    if (rango >= 0 && rango <= 2) {
      objeto.attachImage(loadImage("maceta.png"));
    } 
    if (rango >= 2 && rango <= 4) {
      objeto.attachImage(loadImage("manzanaPodrida.png"));
    }
    if (rango >= 4 && rango <= 6) {
      objeto.attachImage(loadImage("bananaPodrida.png"));
    }
    if (rango >= 6 && rango <= 8) {
      objeto.attachImage(loadImage("pelota.png"));
    }
    
  mundo.add(objeto); 
}
 
  // izq medio
    if (frameCount % 600 == 0 && frameCount < 10000) {
  FCircle objeto = new FCircle (diamBala);
  objeto.setPosition(250,350);
  objeto.setRotation(random(10,350));
  objeto.setName("objeto");
  objeto.setGrabbable(false);    
  float vx = velocidad * cos(anguloIzq);
  float vy = velocidad * sin(anguloIzq);  
  
  objeto.setVelocity (vx+100,vy);

    rango = int (random(8));
    if (rango >= 0 && rango <= 2) {
      objeto.attachImage(loadImage("maceta.png"));
    } 
    if (rango >= 2 && rango <= 4) {
      objeto.attachImage(loadImage("manzanaPodrida.png"));
    }
    if (rango >= 4 && rango <= 6) {
      objeto.attachImage(loadImage("bananaPodrida.png"));
    }
    if (rango >= 6 && rango <= 8) {
      objeto.attachImage(loadImage("pelota.png"));
    }
    
  mundo.add(objeto); 
}
  
  // izq abajo
    if (frameCount % 1000 == 0 && frameCount < 10000) {
  FCircle objeto = new FCircle (diamBala);
  objeto.setPosition(250,500);
  objeto.setRotation(random(10,350));
  objeto.setName("objeto");
  objeto.setGrabbable(false);    
  float vx = velocidad * cos(anguloIzq);
  float vy = velocidad * sin(anguloIzq);  
  
  objeto.setVelocity (vx-150,vy);

    rango = int (random(8));
    if (rango >= 0 && rango <= 2) {
      objeto.attachImage(loadImage("maceta.png"));
    } 
    if (rango >= 2 && rango <= 4) {
      objeto.attachImage(loadImage("manzanaPodrida.png"));
    }
    if (rango >= 4 && rango <= 6) {
      objeto.attachImage(loadImage("bananaPodrida.png"));
    }
    if (rango >= 6 && rango <= 8) {
      objeto.attachImage(loadImage("pelota.png"));
    }
    
  mundo.add(objeto); 
}  
  
//------------------------------

 // der arriba
    if (frameCount % 600 == 0 && frameCount < 10000) {
  FCircle objeto = new FCircle (diamBala);
  objeto.setPosition(1050,150);
  objeto.setRotation(random(10,350));
  objeto.setName("objeto");
  objeto.setGrabbable(false);    
  float vx = velocidad * cos(anguloDer);
  float vy = velocidad * sin(anguloDer);  
  
  objeto.setVelocity (vx-200,vy+200);
  
    rango = int (random(8));
    if (rango >= 0 && rango <= 2) {
      objeto.attachImage(loadImage("maceta.png"));
    } 
    if (rango >= 2 && rango <= 4) {
      objeto.attachImage(loadImage("manzanaPodrida.png"));
    }
    if (rango >= 4 && rango <= 6) {
      objeto.attachImage(loadImage("bananaPodrida.png"));
    }
    if (rango >= 6 && rango <= 8) {
      objeto.attachImage(loadImage("pelota.png"));
    }
    
  mundo.add(objeto); 
}
 
  // der medio
    if (frameCount % 700 == 0 && frameCount < 10000) {
  FCircle objeto = new FCircle (diamBala);
  objeto.setPosition(1050,350);
  objeto.setRotation(random(10,350));
  objeto.setName("objeto");
  objeto.setGrabbable(false);    
  float vx = velocidad * cos(anguloDer);
  float vy = velocidad * sin(anguloDer);  
  
  objeto.setVelocity (vx+50,vy);
  
    rango = int (random(8));
    if (rango >= 0 && rango <= 2) {
      objeto.attachImage(loadImage("maceta.png"));
    } 
    if (rango >= 2 && rango <= 4) {
      objeto.attachImage(loadImage("manzanaPodrida.png"));
    }
    if (rango >= 4 && rango <= 6) {
      objeto.attachImage(loadImage("bananaPodrida.png"));
    }
    if (rango >= 6 && rango <= 8) {
      objeto.attachImage(loadImage("pelota.png"));
    }
    
  mundo.add(objeto); 
}
  
  // der abajo
    if (frameCount % 800 == 0 && frameCount < 10000) {
  FCircle objeto = new FCircle (diamBala);
  objeto.setPosition(1050,500);
  objeto.setRotation(random(10,350));
  objeto.setName("objeto");
  objeto.setGrabbable(false);    
  float vx = velocidad * cos(anguloDer);
  float vy = velocidad * sin(anguloDer);  
  
  objeto.setVelocity (vx,vy);
  
    rango = int (random(8));
    if (rango >= 0 && rango <= 2) {
      objeto.attachImage(loadImage("maceta.png"));
    } 
    if (rango >= 2 && rango <= 4) {
      objeto.attachImage(loadImage("manzanaPodrida.png"));
    }
    if (rango >= 4 && rango <= 6) {
      objeto.attachImage(loadImage("bananaPodrida.png"));
    }
    if (rango >= 6 && rango <= 8) {
      objeto.attachImage(loadImage("pelota.png"));
    }
    
  mundo.add(objeto); 
}  


}//objetos 



void Frutas() {
  
// GENERADOR FRUTAS en VENTANAS:

  // izq arriba
  if (frameCount % random(150,300) == 0 && frameCount < 10000) {
    FCircle fruta = new FCircle (diamBala);
    fruta.setPosition(250, 150);
    fruta.setRotation(random(10,350));
    fruta.setName("bala");
    fruta.setGrabbable(false);
    float vx = velocidad * cos(anguloIzq);
    float vy = velocidad * sin(anguloIzq);  

    fruta.setVelocity (vx, vy);

    rango = int (random(10));
    if (rango >= 0 && rango <= 2) {
      fruta.attachImage(loadImage("anana.png"));
    } 
    if (rango >= 2 && rango <= 4) {
      fruta.attachImage(loadImage("manzana.png"));
    }
    if (rango >= 4 && rango <= 6) {
      fruta.attachImage(loadImage("banana.png"));
    }
    if (rango >= 6 && rango <= 8) {
      fruta.attachImage(loadImage("naranja.png"));
    }
    if (rango >= 8 && rango <= 10) {
      fruta.attachImage(loadImage("mango.png"));
    } 
    
    mundo.add(fruta);
  }

  // izq medio
  if (frameCount % 500 == 0 && frameCount < 10000) {
    FCircle fruta = new FCircle (diamBala);
    fruta.setPosition(250, 350);
    fruta.setRotation(random(10,350));
    fruta.setName("bala");
    fruta.setGrabbable(false);
    float vx = velocidad * cos(anguloIzq);
    float vy = velocidad * sin(anguloIzq);  

    fruta.setVelocity (vx+100, vy);
    
    rango = int (random(10));
    if (rango >= 0 && rango <= 2) {
      fruta.attachImage(loadImage("anana.png"));
    } 
    if (rango >= 2 && rango <= 4) {
      fruta.attachImage(loadImage("manzana.png"));
    }
    if (rango >= 4 && rango <= 6) {
      fruta.attachImage(loadImage("banana.png"));
    }
    if (rango >= 6 && rango <= 8) {
      fruta.attachImage(loadImage("naranja.png"));
    }
    if (rango >= 8 && rango <= 10) {
      fruta.attachImage(loadImage("mango.png"));
    } 
    
    mundo.add(fruta);
  }

  // izq abajo
  if (frameCount % 600 == 0 && frameCount < 10000) {
    FCircle fruta = new FCircle (diamBala);
    fruta.setPosition(250, 500);
    fruta.setRotation(random(10,350));
    fruta.setName("bala");
    fruta.setGrabbable(false);
    float vx = velocidad * cos(anguloIzq);
    float vy = velocidad * sin(anguloIzq);  

    fruta.setVelocity (vx-150, vy);
    
    rango = int (random(10));
    if (rango >= 0 && rango <= 2) {
      fruta.attachImage(loadImage("anana.png"));
    } 
    if (rango >= 2 && rango <= 4) {
      fruta.attachImage(loadImage("manzana.png"));
    }
    if (rango >= 4 && rango <= 6) {
      fruta.attachImage(loadImage("banana.png"));
    }
    if (rango >= 6 && rango <= 8) {
      fruta.attachImage(loadImage("naranja.png"));
    }
    if (rango >= 8 && rango <= 10) {
      fruta.attachImage(loadImage("mango.png"));
    } 
    
    mundo.add(fruta);
  }  

  //-------------------------------------------------------------------

  // der arriba
  if (frameCount % random(200,400) == 0 && frameCount < 10000) {
    FCircle fruta = new FCircle (diamBala);
    fruta.setPosition(1050, 150);
    fruta.setRotation(random(10,350));
    fruta.setName("bala");
    fruta.setGrabbable(false);
    float vx = velocidad * cos(anguloDer);
    float vy = velocidad * sin(anguloDer);  

    fruta.setVelocity (vx-200, vy+200);
    
    rango = int (random(10));
    if (rango >= 0 && rango <= 2) {
      fruta.attachImage(loadImage("anana.png"));
    } 
    if (rango >= 2 && rango <= 4) {
      fruta.attachImage(loadImage("manzana.png"));
    }
    if (rango >= 4 && rango <= 6) {
      fruta.attachImage(loadImage("banana.png"));
    }
    if (rango >= 6 && rango <= 8) {
      fruta.attachImage(loadImage("naranja.png"));
    }
    if (rango >= 8 && rango <= 10) {
      fruta.attachImage(loadImage("mango.png"));
    }    
    
    mundo.add(fruta);
  }

  // der medio
  if (frameCount % 300 == 0 && frameCount < 10000) {
    FCircle fruta = new FCircle (diamBala);
    fruta.setPosition(1050, 350);
    fruta.setRotation(random(10,350));
    fruta.setName("bala");
    fruta.setGrabbable(false);
    float vx = velocidad * cos(anguloDer);
    float vy = velocidad * sin(anguloDer);  

    fruta.setVelocity (vx+50, vy);
    
    rango = int (random(10));
    if (rango >= 0 && rango <= 2) {
      fruta.attachImage(loadImage("anana.png"));
    } 
    if (rango >= 2 && rango <= 4) {
      fruta.attachImage(loadImage("manzana.png"));
    }
    if (rango >= 4 && rango <= 6) {
      fruta.attachImage(loadImage("banana.png"));
      
    }
    if (rango >= 6 && rango <= 8) {
      fruta.attachImage(loadImage("naranja.png"));
    }
    if (rango >= 8 && rango <= 10) {
      fruta.attachImage(loadImage("mango.png"));
    } 
    
    mundo.add(fruta);
  }

  // der abajo
  if (frameCount % 900 == 0 && frameCount < 10000) {
    FCircle fruta = new FCircle (diamBala);
    fruta.setPosition(1050, 500);
    fruta.setRotation(random(10,350));
    fruta.setName("bala");
    fruta.setGrabbable(false);
    float vx = velocidad * cos(anguloDer);
    float vy = velocidad * sin(anguloDer);  

    fruta.setVelocity (vx, vy);
    
    rango = int (random(10));
    if (rango >= 0 && rango <= 2) {
      fruta.attachImage(loadImage("anana.png"));
    } 
    if (rango >= 2 && rango <= 4) {
      fruta.attachImage(loadImage("manzana.png"));
    }
    if (rango >= 4 && rango <= 6) {
      fruta.attachImage(loadImage("banana.png"));
    }
    if (rango >= 6 && rango <= 8) {
      fruta.attachImage(loadImage("naranja.png"));
    }
    if (rango >= 8 && rango <= 10) {
      fruta.attachImage(loadImage("mango.png"));
    } 
    
    mundo.add(fruta);
    
  }
  

//---------------------------------------------------

// coco

  if (frameCount % 2500 == 0 && frameCount < 10000) {  // izq
    FCircle fruta = new FCircle (diamBala);
    fruta.setPosition(80, 270);
    fruta.setName("coco");
    fruta.setGrabbable(false);
    fruta.setVelocity (352, -430);    
    fruta.attachImage(loadImage("coco.png"));     
    mundo.add(fruta);    
  }

  if (frameCount % 2000 == 0 && frameCount < 10000) {  // der
    FCircle fruta = new FCircle (diamBala);
    fruta.setPosition(1250, 270);
    fruta.setName("coco");
    fruta.setGrabbable(false);
    float vx = velocidad * cos(anguloDer);
    float vy = velocidad * sin(anguloDer);  
    fruta.setVelocity (vx-160, vy-190);    
    fruta.attachImage(loadImage("coco.png"));     
    mundo.add(fruta);    
  }


  
  
} //frutas

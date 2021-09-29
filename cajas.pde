

void Caja(){

// Las que flotan en el medio

  cajas = new FBox(30,30);  // izq
  cajas.setPosition (500,500); 
  cajas.setRestitution(1.2);
  cajas.attachImage(loadImage("caja.png"));
  cajas.setStatic(true);
  cajas.setName("caja");
  mundo.add(cajas);
  
  cajas = new FBox(30,30); // der 
  cajas.setPosition (800,500); 
  cajas.setRestitution(1.2);
  cajas.attachImage(loadImage("caja.png"));  
  cajas.setStatic(true);
  cajas.setName("caja");
  mundo.add(cajas); 
  
  cajas = new FBox(30,30);  // medio
  cajas.setPosition (width/2,300); 
  cajas.setRestitution(1.2);
  cajas.attachImage(loadImage("caja.png"));  
  cajas.setStatic(true);
  cajas.setName("caja");
  mundo.add(cajas);    
  

//-----------------------------------
//Bordes balcones 
//--------------------
/*  Izq Arriba */
  cajas = new FBox(20,20);  
  cajas.setPosition (340,230);
  cajas.setNoStroke();
  cajas.setFill(255,0);
  cajas.setRestitution(3);
  cajas.setStatic(true);
  cajas.setName("caja");
  mundo.add(cajas);

/*  Izq Medio */
  cajas = new FBox(20,20);  
  cajas.setPosition (340,400);
  cajas.setNoStroke();
  cajas.setFill(255,0);  
  cajas.setRestitution(3);
  cajas.setStatic(true);
  cajas.setName("caja");
  mundo.add(cajas);

  /*  Izq Abajo */
  cajas = new FBox(20,20);  
  cajas.setPosition (340,580);
  cajas.setNoStroke();
  cajas.setFill(255,0);  
  cajas.setRestitution(3);
  cajas.setStatic(true);
  cajas.setName("caja");
  mundo.add(cajas);


//-------------------------------


/*  Der Medio */
  cajas = new FBox(20,20);  
  cajas.setPosition (972,380);
  cajas.setRotation(1);
  cajas.setNoStroke();
  cajas.setFill(255,0);  
  cajas.setRestitution(1);
  cajas.setStatic(true);
  cajas.setName("caja");
  mundo.add(cajas);



 
  
}//

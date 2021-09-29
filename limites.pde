

void limites (){
  
  /* Izquierda */
  piso = new FBox(10,80); // pared 
  piso.setPosition (320,660);
  piso.setName("piso");
  piso.setFill(255,0);
  piso.setNoStroke();
  piso.setStatic(true);
  mundo.add(piso);

  piso = new FBox(10,50); // MiniCuadrado
  piso.setPosition (315,610);
  piso.setName("piso");
  piso.setFill(0,0);
  piso.setNoStroke();
  piso.setStatic(true);
  mundo.add(piso);
  
  //------------------
  
  /* Derecha */
  piso = new FBox(10,80); // derecha
  piso.setPosition (970,660);
  piso.setName("piso");
  piso.setFill(0,0);
  piso.setNoStroke();
  piso.setStatic(true);
  mundo.add(piso);
  
  piso = new FBox(10,50); // MiniCuadrado 
  piso.setPosition (975,610);
  piso.setName("piso");
  piso.setFill(0,0);
  piso.setNoStroke();
  piso.setStatic(true);
  mundo.add(piso);   
  
}

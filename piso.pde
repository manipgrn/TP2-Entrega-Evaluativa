
void piso (){
  
 //izq 
  piso = new FBox(433,2);
  piso.setPosition (200,747); 
  piso.setName("piso");
  piso.setFill(0,0);
  piso.setNoStroke();
  piso.setStatic(true);
  mundo.add(piso);
  
 //Centro 
  piso = new FBox(390,2);
  piso.setPosition (width/2,747);
  piso.setName("piso");
  piso.setFill(0,0);
  piso.setNoStroke();
  piso.setStatic(true);
  mundo.add(piso);  
 
 //Derecha 
  piso = new FBox(390,2);
  piso.setPosition (1080,747);
  piso.setName("piso");
  piso.setFill(0,0);
  piso.setNoStroke();
  piso.setStatic(true);
  mundo.add(piso);    
  
//----------------------------------
 
 //PISO para que la rata desaparezca
 
 //lado izq
  piso = new FBox(10,10);
  piso.setPosition (444,785);
  piso.setName("pisoRata");
  piso.setFill(0,0);
  piso.setNoStroke();
  piso.setStatic(true);
  mundo.add(piso);  

 //lado der
  piso = new FBox(10,10);
  piso.setPosition (858,785);
  piso.setName("pisoRata");
  piso.setFill(0,0);
  piso.setNoStroke();
  piso.setStatic(true);
  mundo.add(piso);  

}

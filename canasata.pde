

class Canasta extends FBox {
  
  Boolean izqPresionado, derPresionado;

  int velocidad;

  String direccion; 
  PImage marioQuietoDer, marioQuietoIzq, marioSaltoDer, marioSaltoIzq;
  PImage[] marioDer, marioIzq;
  int frameCaminata;

  Canasta(float _w, float _h)
  {
    super(_w, _h);
  }

  void inicializar(float _x, float _y)
  {

    velocidad = 210;

    izqPresionado = false;
    derPresionado = false;

    setName("canasta");
    setFill(0,255);
    setNoStroke();
    setPosition(_x,_y);  
    setDamping(0);
    setRestitution(0);
    setFriction(0);
    setRotatable(false);
    setGrabbable(false); 

    direccion = "der";

  }


  void actualizar(){    
      if (izqPresionado){
        setVelocity(-velocidad, getVelocityY());
        direccion = "izq";
      }

      if (derPresionado){
        setVelocity(velocidad, getVelocityY());
        direccion = "der";
      }

      if (!izqPresionado && !derPresionado){
        setVelocity(0, getVelocityY());
      }

      if (frameCount % 4 == 0)
      {
        frameCaminata = (frameCaminata + 1) % 3;
      }
      
  if (vida <= 0){
   setName("piso");
  } 
  if (punto >= 10){
   setName("piso");
  } 
      
  }

  void inmovilizado(){
  velocidad = 50;
  }
  
  
  void reanudar(){
  velocidad = 210;  
  }

}//

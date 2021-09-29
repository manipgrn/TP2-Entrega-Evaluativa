class Personaje extends FBox
{
  Boolean izqPresionado, derPresionado;
  Boolean sePresiona;

  int velocidad;

  String direccion;
  PImage marioQuietoDer, marioQuietoIzq, marioSaltoDer, marioSaltoIzq;
  PImage[] marioDer, marioIzq;
  int frameCaminata;

  Personaje(float _w, float _h)
  {
    super(_w, _h);
  }

  void inicializar(float _x, float _y)
  {

    velocidad = 210;

    izqPresionado = false;
    derPresionado = false;


    setName("personaje");
    perso.attachImage(loadImage("personaje.png"));

    setPosition(_x, _y);
    setDamping(0);
    setRestitution(0);
    setFriction(0);
    setRotatable(false);

    direccion = "der";
  }


  void actualizar() {
    
    //velocidad = 210;
    
    if (izqPresionado) {
      setVelocity(-velocidad, getVelocityY());
      direccion = "izq";
      //velocidad = 210;
    }

    if (derPresionado) {
      setVelocity(velocidad, getVelocityY());
      direccion = "der";
    }

    if (!izqPresionado && !derPresionado) {
      setVelocity(0, getVelocityY());
    }

    if (frameCount % 4 == 0)
    {
      frameCaminata = (frameCaminata + 1) % 3;
    }

    if (punto >= 10) {
      setName("pisoRata");
    }  
  }

  void inmovilizado(){
    velocidad = 50;
  }
  
  
  void reanudar(){
  velocidad = 210;  
  }
  
  
  
}

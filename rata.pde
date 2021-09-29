
void rata(){  
  
    if (frameCount % 800 == 0 && frameCount < 10000) { // izq   //800
    FCircle rata = new FCircle (20);
    rataa.trigger();
    rata.setPosition(210, 710);
    rata.attachImage(loadImage("rata.png")); 
    rata.setVelocity(245,0);
    rata.setRotatable(false);
    rata.setName("rata");
    rata.setGrabbable(false);
    mundo.add(rata);  
 } 
 
    if (frameCount % 900 == 0 && frameCount < 10000) {  // der 
    FCircle rata = new FCircle (20);
    rataa.trigger();
    rata.setPosition(1080, 710);
    rata.attachImage(loadImage("rataDer.png"));
    rata.setVelocity(-245,0);
    rata.setRotatable(false);
    rata.setName("rata");
    rata.setGrabbable(false);
    mundo.add(rata);  
 } 
 
 

}

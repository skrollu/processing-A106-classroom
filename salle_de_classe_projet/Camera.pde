// Distance de la camera au sujet.
float rayon = 600;

// Angle de la camera avec le sujet sur le plan XZ.
float theta = 0; 
float phi = 0;

// Position cartésienne de la camera
// calculée à partir du rayon et de l'angle.
float camX = 100;
float camY = 170;
float camZ = rayon;

float eyeX = 100;
float eyeY = 170;
float eyeZ = 300;

float centreX = 980;
float centreY = 170;
float centreZ = 300;

float vitesseDeplacement = 6;

void bougerCamera() {
  
  //camera(
  //  camX, camY, camZ,
  //  0, 0, 0,
  //  0, 1, 0
  //); 
  
  //if (isPressed == true) {
  //  // On incrémente l'angle :
  //  theta = (theta + radians(pmouseX - mouseX)  * 0.2) %TWO_PI;
  //  phi = (phi + radians(pmouseY - mouseY)  * 0.2) %TWO_PI;
    
  //  // Calcul de la position cartésienne sur le
  //  // plan XZ :
  //  camX = rayon * cos(phi) * sin(theta);
  //  camY = rayon * sin(phi);
  //  camZ = rayon * cos(phi) * cos(theta);
  //}
  
  camera(
    eyeX, eyeY, eyeZ,
    centreX, centreY, centreZ,
    0, 1, 0
  ); 
  
      if (keyMap.containsKey('z') && keyMap.get('z')){
      eyeX += vitesseDeplacement;
      centreX += vitesseDeplacement;
    }
    if(keyMap.containsKey('s') && keyMap.get('s')){
      eyeX -= vitesseDeplacement;
      centreX -= vitesseDeplacement;
    }
    if(keyMap.containsKey('d') && keyMap.get('d')){
      eyeZ += vitesseDeplacement;
      centreZ += vitesseDeplacement;
    }
    if(keyMap.containsKey('q') && keyMap.get('q')){
      eyeZ -= vitesseDeplacement;
      centreZ -= vitesseDeplacement;      
    }
    if(keyMap.containsKey(' ') && keyMap.get(' ')){
      eyeY -= vitesseDeplacement; 
      centreY -= vitesseDeplacement;
    }
    if(keyMap.containsKey('v') && keyMap.get('v')){
      eyeY += vitesseDeplacement;
      centreY += vitesseDeplacement;
    }
    
   if(keyPressed){
    if(keyCode == LEFT){
      centreZ -= vitesseDeplacement;  
    }
    if(keyCode == RIGHT){
      centreZ += vitesseDeplacement;        
    }
  }
}

void keyPressed(KeyEvent event) {
  char k = event.getKey();
  println("keyPressed => " + k);
  keyMap.put(Character.toLowerCase(k), true);
}

void keyReleased(KeyEvent event){
  char k = event.getKey();
  println("keyReleased => " + k);
  keyMap.put(Character.toLowerCase(k), false);
}

void mousePressed(){
  //centreZ = (pmouseX - mouseX);
}

void mouseReleased(){
 
}

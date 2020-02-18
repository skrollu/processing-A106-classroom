// Multiples keys pressed at the same time 
HashMap<Character, Boolean> keyMap;

// Distance de la camera au sujet.
float rayon = 980;

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

float centreZMin = -500;
float centreZMax = 1000;

float centreXMin = -1000;
float centreXMax = 2000;

float centreYMin = -300;
float centreYMax = 600;

float vitesseDeplacement = 6;


void bougerCamera() {
  
  //camera(
  //  camX, camY, camZ,
  //  0, 0, 0,
  //  0, 1, 0
  //); 
  
  //if (mousePressed) {
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
  
    //Mouvement caméra axe X - Z (Touches: ZQSD)
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
    
    //Deplacement camera vers le haut - bas (touches: 'espace' - V)
    if(keyMap.containsKey(' ') && keyMap.get(' ')){
      eyeY -= vitesseDeplacement; 
      centreY -= vitesseDeplacement;
    }
    if(keyMap.containsKey('v') && keyMap.get('v')){
      eyeY += vitesseDeplacement;
      centreY += vitesseDeplacement;
    }
    
    
    //Direction Regard Camera (mouvement du centre) (touches directionnelles)
    if(keyMap.containsKey('k') && keyMap.get('k')){
      if(centreZ > centreZMin){
        centreZ -= vitesseDeplacement;  
      } else {
        if(centreX > centreXMin){
          centreX -= vitesseDeplacement;
        }
      }
    }
    if(keyMap.containsKey('m') && keyMap.get('m')){
      if(centreZ < centreZMax){
        centreZ += vitesseDeplacement;  
      } else {
        if(centreX < centreXMax){
          centreX += vitesseDeplacement;
        }
      } 
    }
    if(keyMap.containsKey('o') && keyMap.get('o')){
      centreY -= vitesseDeplacement;  
    }
   if(keyMap.containsKey('l') && keyMap.get('l')){
      centreY += vitesseDeplacement;  
    }
   
}

void keyPressed(KeyEvent event) {
  
  print("Centre ( " + centreX +" , " + centreY +" , " + centreZ +" )"); 

  //peut etre amélioré
  if(key == CODED){
    if(keyCode == LEFT){
      keyMap.put('k', true);
    }
    if(keyCode == RIGHT){
      keyMap.put('m', true);      
    }
    if(keyCode == UP){
      keyMap.put('o', true);
    }
    if(keyCode == DOWN){
      keyMap.put('l', true);      
    }
  }
  char k = event.getKey();
  println("keyPressed => " + k);
  keyMap.put(Character.toLowerCase(k), true);
}

void keyReleased(KeyEvent event){
  if(key == CODED){
      if(keyCode == LEFT){
        keyMap.put('k', false);
      }
      if(keyCode == RIGHT){
        keyMap.put('m', false);      
      }
      if(keyCode == UP){
        keyMap.put('o', false);
      }
      if(keyCode == DOWN){
        keyMap.put('l', false);   
      }
  }
  char k = event.getKey();
  println("keyReleased => " + k);
  keyMap.put(Character.toLowerCase(k), false);
}

void mousePressed(){
  //centreZ = (pmouseX - mouseX);
}

void mouseReleased(){
 
}

// Multiples keys pressed at the same time 
HashMap<Character, Boolean> keyMap;

// Distance de la camera au sujet.
float rayon = 100;

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

float sensibiliteCamera = 10;
float vitesseDeplacement = 5;


void bougerCamera() {
 /* 
  camera(
    camX, camY, camZ,
    0, 0, 0,
    0, 1, 0
  ); 
  
  if (mousePressed) {
    // On incrémente l'angle :
    theta = (theta + radians(pmouseX - mouseX)  * 0.2) %TWO_PI;
    phi = (phi + radians(pmouseY - mouseY)  * 0.2) %TWO_PI;
  
    // Calcul de la position cartésienne sur le
    // plan XZ :
    camX = rayon * cos(phi) * sin(theta);
    camY = rayon * sin(phi);
    camZ = rayon * cos(phi) * cos(theta);
  }
  */
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
    if(keyMap.containsKey('h') && keyMap.get('h')){
        centreZ -= sensibiliteCamera;  
    }
    if(keyMap.containsKey('k') && keyMap.get('k')){
      centreZ += sensibiliteCamera;  
    }
    if(keyMap.containsKey('u') && keyMap.get('u')){
      centreY -= sensibiliteCamera;  
    }
   if(keyMap.containsKey('j') && keyMap.get('j')){
      centreY += sensibiliteCamera;  
    }
   
}

void keyPressed(KeyEvent event) {
  
  //print("Centre ( " + centreX +" , " + centreY +" , " + centreZ +" )"); 

  //peut etre amélioré on associe les touches "coded" flèches directionnels à des touches non utilisées du clavier par
  //notre croquis k,m,o,l dans le keyMap.
  if(key == CODED){
    if(keyCode == LEFT){
      keyMap.put('h', true);
    }
    if(keyCode == RIGHT){
      keyMap.put('k', true);      
    }
    if(keyCode == UP){
      keyMap.put('u', true);
    }
    if(keyCode == DOWN){
      keyMap.put('j', true);      
    }
  }
  char k = event.getKey();
  //println("keyPressed => " + k);
  keyMap.put(Character.toLowerCase(k), true);
}

void keyReleased(KeyEvent event){
  if(key == CODED){
      if(keyCode == LEFT){
        keyMap.put('h', false);
      }
      if(keyCode == RIGHT){
        keyMap.put('k', false);      
      }
      if(keyCode == UP){
        keyMap.put('u', false);
      }
      if(keyCode == DOWN){
        keyMap.put('j', false);   
      }
  }
  char k = event.getKey();
  //println("keyReleased => " + k);
  keyMap.put(Character.toLowerCase(k), false);
}

void mousePressed(){
  
}

void mouseReleased(){
 
}

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

float vitesseDeplacement = 3;

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
  
  if(keyPressed){
    if(key == 'z' || key == 'Z'){
      eyeX += vitesseDeplacement;
    }
    if(key == 's' || key == 'S'){
      eyeX -= vitesseDeplacement;
    }
    if(key == 'd' || key == 'D'){
      eyeZ += vitesseDeplacement;
      centreZ += vitesseDeplacement;
    }
    if(key == 'q' || key == 'Q'){
      eyeZ -= vitesseDeplacement;
      centreZ -= vitesseDeplacement;      
    }
    if(keyCode == ' '){
      camY -= vitesseDeplacement; 
    }
    if(key == 'v' || key == 'V'){
      camY += vitesseDeplacement;
    }
    
    if(keyCode == LEFT){
      centreZ -= vitesseDeplacement;  
    }
    if(keyCode == RIGHT){
      centreZ += vitesseDeplacement;        
    }
  }
}


void mousePressed(){
  //centreZ = (pmouseX - mouseX);
}

void mouseReleased(){
 
}

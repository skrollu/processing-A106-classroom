// Distance de la camera au sujet.
float rayon = 700;

// Angle de la camera avec le sujet sur le plan XZ.
float theta = 0; 
float phi = 0;

// Position cartésienne de la camera
// calculée à partir du rayon et de l'angle.
float camX = 100;
float camZ = 300;
float camY = 170;

boolean isPressed = false;
float vitesseDeplacement = 3;

float yeuxDirectionX = 980;
float yeuxDirectionY = 170;
float yeuxDirectionZ = 300;

void bougerCamera() {
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
  
  if(keyPressed){
    if(keyCode == UP){
      camX += vitesseDeplacement;
    }
    if(keyCode == DOWN){
      camX-= vitesseDeplacement;
    }
    if(keyCode == RIGHT){
      camZ+= vitesseDeplacement;
      yeuxDirectionZ+= vitesseDeplacement;
    }
    if(keyCode == LEFT){
      camZ-= vitesseDeplacement;
      yeuxDirectionZ -= vitesseDeplacement;      
    }
  }
}


void mousePressed(){
  isPressed = true;
}

void mouseReleased(){
  isPressed = false;
}

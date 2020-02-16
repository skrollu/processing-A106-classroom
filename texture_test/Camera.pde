// Distance de la camera au sujet.
float rayon = 600;

float anglex = 0f;

// Angle de la camera avec le sujet sur le plan XZ.
float theta = 0; 

float phi = 0;

// Position cartésienne de la camera
// calculée à partir du rayon et de l'angle.
float camX = rayon * cos(phi) * sin(theta);
float camY = rayon * sin(phi);
float camZ = rayon * cos(phi) * cos(theta);

void bougerCamera() {
  camX = rayon * cos(phi) * sin(theta);
  camY = rayon * sin(phi);
  camZ = rayon * cos(phi) * cos(theta);
  if(mousePressed){
      anglex = radians(mouseX);  
      // On incrémente l'angle :
      theta = (theta - radians(mouseX) + radians(pmouseX)) % TWO_PI;
      phi   = (phi   - radians(mouseY) + radians(pmouseY));
      if(phi >= PI/2)  phi = PI/2-0.000001;
      if(phi <= -PI/2) phi = -PI/2+0.000001;
    }
}

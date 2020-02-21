boolean switchLight = true;

PVector[] lightPos = { 
   new PVector((longueurLumiere + (longueurLumiere/2)), 25, ((2*longueurLumiere) + (largeurLumiere/2))),
   new PVector((3*longueurLumiere) + (longueurLumiere/2),  25, ((2*longueurLumiere) + (largeurLumiere/2))),
   new PVector((5*longueurLumiere) + (longueurLumiere/2),  25, ((2*longueurLumiere) + (largeurLumiere/2))),
   new PVector((longueurLumiere + longueurLumiere/2),  25, ((3*longueurLumiere) + (largeurLumiere/2))),
   new PVector(((3*longueurLumiere) + longueurLumiere/2),  25, ((3*longueurLumiere) + (largeurLumiere/2))),
   new PVector(((5*longueurLumiere) + longueurLumiere/2),  25, ((3*longueurLumiere) + (largeurLumiere/2)))
};

PVector[] lightColor = {
  new PVector(217, 197, 147),
  new PVector(217, 197, 147),
  new PVector(217, 197, 147),
  new PVector(217, 197, 147),
  new PVector(217, 197, 147),
  new PVector(217, 197, 147)
};

PShape creerLumiere(){

  PShape lumiere = creerForme(longueurLumiere, largeurLumiere, hauteurLumiere, color(255, 255, 255, 10), null, 0, 255);
    
  return lumiere;
}

void dessineLumiere(){
  if (keyMap.containsKey('l') && keyMap.get('l')){
    switchLight = !switchLight;
  }

  if(switchLight){
    //ambientLight(102, 102, 102);
    //lightSpecular(200, 200, 200);
    //specular(255, 255, 255);
    
    pushMatrix();
      lightSpecular(200, 200, 200);
      pointLight(200, 200, 200, longueurSalle/2, hauteurSalle/2, largeurSalle/2);
    popMatrix();
    
    //for(int i=0; i<lightPos.length; i++) {
    //    pushMatrix();
    //        translate(lightPos[i].x, lightPos[i].y, lightPos[i].z);
    //        lightSpecular(200, 200, 200);
    //        noStroke();
    //        lightSpecular(200, 200, 200);
    //        emissive(lightColor[i].x, lightColor[i].y, lightColor[i].z);
    //        pointLight(200, 200, 200, 
    //                   lightPos[i].x, lightPos[i].y, lightPos[i].z);
    //        box(10,10,10);
    //    popMatrix();
    //}
  }
}

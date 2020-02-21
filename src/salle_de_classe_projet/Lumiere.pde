boolean switchLight = true;

float shininessSalle = 200;
float shininessObjet = 100;
float shininessObjetBrillant = 500;

float lightCol = 150;

PVector[] lightPos = { 
   new PVector((longueurSalle/3), 25, (largeurSalle/3)),
   new PVector((longueurSalle/3), 25, 2*(largeurSalle/3)),
   new PVector(2*(longueurSalle/3), 25, (largeurSalle/3)),
   new PVector(2*(longueurSalle/3), 25, 2*(largeurSalle/3))
};

PVector[] lightColor = {
  new PVector(lightCol, lightCol, lightCol),
  new PVector(lightCol, lightCol, lightCol),
  new PVector(lightCol, lightCol, lightCol),
  new PVector(lightCol, lightCol, lightCol)

};

PShape creerLumiere(){

  PShape lumiere = creerForme(longueurLumiere, largeurLumiere, hauteurLumiere, color(255, 255, 255, 10), vide, 0, 255);
    
  return lumiere;
}

void dessineLumiere(){
  if (keyMap.containsKey('l') && keyMap.get('l')){
    switchLight = !switchLight;
  }

  if(switchLight){

    for(int i=0; i<lightPos.length; i++) {
      pushMatrix();
        //ambientLight(80,80,80);
        translate(lightPos[i].x, lightPos[i].y, lightPos[i].z);
        lightSpecular(40, 40, 40);
        pointLight(lightColor[i].x, lightColor[i].y, lightColor[i].z, 
                 lightPos[i].x, lightPos[i].y, lightPos[i].z);
        //resetShader();
        box(10,10,10);
      popMatrix();
    }
    

  }
}

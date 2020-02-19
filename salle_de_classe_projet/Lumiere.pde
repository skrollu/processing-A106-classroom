PVector[] lightPos = { 
   new PVector((longueurLumiere + (longueurLumiere/2)), hauteurLumiere+1, ((2*longueurLumiere) + (largeurLumiere/2))),
   new PVector((3*longueurLumiere) + (longueurLumiere/2),  hauteurLumiere+1, ((2*longueurLumiere) + (largeurLumiere/2))),
   new PVector((5*longueurLumiere) + (longueurLumiere/2),  hauteurLumiere+1, ((2*longueurLumiere) + (largeurLumiere/2))),
   new PVector((longueurLumiere + longueurLumiere/2),  hauteurLumiere+1, ((3*longueurLumiere) + (largeurLumiere/2))),
   new PVector(((3*longueurLumiere) + longueurLumiere/2),  hauteurLumiere+1, ((3*longueurLumiere) + (largeurLumiere/2))),
   new PVector(((5*longueurLumiere) + longueurLumiere/2),  hauteurLumiere+1, ((3*longueurLumiere) + (largeurLumiere/2)))
};

PVector[] lightColor = {
  new PVector(250, 240, 210),
  new PVector(250, 240, 210),
  new PVector(250, 240, 210),
  new PVector(250, 240, 210),
  new PVector(250, 240, 210),
  new PVector(250, 240, 210)
};

PShape creerLumiere(){

  PShape lumiere = creerForme(longueurLumiere, largeurLumiere, hauteurLumiere, color(255, 255, 255, 0), null);
    
  return lumiere;
}

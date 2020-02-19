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

  PShape lumiere = creerForme(longueurLumiere, largeurLumiere, hauteurLumiere, color(255, 255, 255, 10), null);
    
  return lumiere;
}

PShape creerChaise(){

  PShape assise = creerForme(longueurAssiseChaise, largeurAssiseChaise, hauteurAssiseChaise, 255, boisChaise);
  PShape piedAvant1 = creerForme(longueurPiedChaise, largeurPiedChaise, hauteurPiedAvantChaise, color(235, 229, 52), null);
  PShape piedAvant2 = creerForme(longueurPiedChaise, largeurPiedChaise, hauteurPiedAvantChaise, color(235, 229, 52), null);
  PShape piedArriere1 = creerForme(longueurPiedChaise, largeurPiedChaise, hauteurPiedArriereChaise, color(235, 229, 52), null);
  PShape piedArriere2 = creerForme(longueurPiedChaise, largeurPiedChaise, hauteurPiedArriereChaise, color(235, 229, 52), null);
  PShape dossier = creerForme(longueurDossierChaise, largeurDossierChaise, hauteurDossierChaise, 255, boisChaise);
    
  PShape chaise = createShape(GROUP);
  
    piedAvant1.translate(0,hauteurAssiseChaise,0);
    piedAvant2.translate(0,hauteurAssiseChaise,longueurAssiseChaise-longueurPiedChaise);
    piedArriere1.translate(largeurAssiseChaise-largeurPiedChaise,hauteurPiedAvantChaise - hauteurPiedArriereChaise + hauteurAssiseChaise, 0);
    piedArriere2.translate(largeurAssiseChaise-largeurPiedChaise,hauteurPiedAvantChaise - hauteurPiedArriereChaise + hauteurAssiseChaise, longueurAssiseChaise-longueurPiedChaise);
    
    
    dossier.rotateY(-PI/2);
    dossier.translate(largeurAssiseChaise-(largeurPiedChaise/2), hauteurPiedAvantChaise - hauteurPiedArriereChaise + 7, longueurPiedChaise);
    
    
    chaise.addChild(assise);
    
    chaise.addChild(piedAvant1);
    chaise.addChild(piedAvant2);
    chaise.addChild(piedArriere1);
    chaise.addChild(piedArriere2);
    chaise.addChild(dossier);
   
  return chaise;
}

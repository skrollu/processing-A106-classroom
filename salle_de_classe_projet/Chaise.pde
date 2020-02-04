PShape creerChaise(){

  PShape chaise;
  PShape assise; 
  PShape piedAvant1;
  PShape piedAvant2;
  PShape piedArriere1;
  PShape piedArriere2;
  PShape dossier;
  
  Forme formeAssise = new Forme(longueurAssiseChaise, largeurAssiseChaise, hauteurAssiseChaise, 255, boisChaise);
  Forme formePiedAvant1 = new Forme(longueurPiedChaise, largeurPiedChaise, hauteurPiedAvantChaise, color(235, 229, 52), null);
  Forme formePiedAvant2 = new Forme(longueurPiedChaise, largeurPiedChaise, hauteurPiedAvantChaise, color(235, 229, 52), null);
  Forme formePiedArriere1 = new Forme(longueurPiedChaise, largeurPiedChaise, hauteurPiedArriereChaise, color(235, 229, 52), null);
  Forme formePiedArriere2 = new Forme(longueurPiedChaise, largeurPiedChaise, hauteurPiedArriereChaise, color(235, 229, 52), null);
  Forme formeDossier = new Forme(longueurDossierChaise, largeurDossierChaise, hauteurDossierChaise, 255, boisChaise);
  
  assise = formeAssise.getForme();
  piedAvant1 = formePiedAvant1.getForme();
  piedAvant2 = formePiedAvant2.getForme();
  piedArriere1 = formePiedArriere1.getForme();
  piedArriere2 = formePiedArriere2.getForme();
  dossier = formeDossier.getForme();
  
  chaise = createShape(GROUP);
  
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

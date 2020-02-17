PShape creerLumiere(){

  PShape fenetre; 
  
  Forme formeFenetre = new Forme(longueurLumiere, largeurLumiere, hauteurLumiere, color(237, 237, 237), null);
  
  fenetre = formeFenetre.getForme();
  
  return fenetre;
}

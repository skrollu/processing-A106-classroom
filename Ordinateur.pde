PShape creerOrdinateur(){
  PShape ordinateur;
  PShape ecran;
  PShape ecranPlateau;
  PShape ecranPied;
  PShape ecranBord;
  //PShape ecranPlateau;
  
  
  Forme formeOrdinateur = new Forme(40,60,20);
  Forme formeEcranPlateau = new Forme(10,12,1);
  Forme formeEcranPied = new Forme(2,4,15);
  Forme formeEcranBord = new Forme(3,32,20);
  
  ordinateur = formeOrdinateur.getForme();
  ecranPlateau = formeEcranPlateau.getForme();
  ecranPied = formeEcranPied.getForme();
  ecranBord = formeEcranBord.getForme();
  
  ecran = createShape(GROUP);
  
  ecran.addChild(ecranPlateau);
  
  ecranPied.translate(1,-15,4);
  ecran.addChild(ecranPied);
  
  ecranBord.translate(3,-28, -10);
  ecran.addChild(ecranBord);
  
  return ecran;
}

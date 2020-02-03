PShape creerOrdinateur(){
  PShape ordinateur;
  PShape ecran;
  PShape ecranPlateau;
  PShape ecranPied;
  PShape ecranBordHaut;
  PShape ecranBordDroite;
  PShape ecranBordBas;
  PShape ecranBordGauche;
  PShape ecranBordDos;
  PShape ecranEcran;
  
  Forme formeOrdinateur = new Forme(40,60,20);
  Forme formeEcranPlateau = new Forme(10,12,1);
  Forme formeEcranPied = new Forme(2,4,15);
  //Forme formeEcranBord = new Forme(3,largeurEcran , hauteurEcran);
  Forme formeEcranBordHaut = new Forme(3,largeurEcran , 1);
  Forme formeEcranBordDroite = new Forme(3,1 , hauteurEcran-2);
  Forme formeEcranBordBas = new Forme(3,largeurEcran , 1);
  Forme formeEcranBordGauche = new Forme(3,1 , hauteurEcran-2);
  Forme formeEcranBordDos = new Forme(1, largeurEcran-2 , hauteurEcran-2);
  Forme formeEcranEcran = new Forme(1, largeurEcran-2 , hauteurEcran-2);
  
  ordinateur = formeOrdinateur.getForme();
  ecranPlateau = formeEcranPlateau.getForme();
  ecranPied = formeEcranPied.getForme();
  ecranBordHaut = formeEcranBordHaut.getForme();
  ecranBordDroite = formeEcranBordDroite.getForme();
  ecranBordBas = formeEcranBordBas.getForme();
  ecranBordGauche = formeEcranBordGauche.getForme();
  ecranBordDos = formeEcranBordDos.getForme();
  ecranEcran = formeEcranEcran.getForme();
  
  ecran = createShape(GROUP);
  
  ecran.addChild(ecranPlateau);
  
  ecranPied.translate(1,-15,4);
  ecran.addChild(ecranPied);
  
  ecranBordHaut.translate(3,-28, -10);
  ecran.addChild(ecranBordHaut);
  
  ecranBordDroite.translate(3,-27, -10);
  ecran.addChild(ecranBordDroite);
  
  ecranBordBas.translate(3,-28 + hauteurEcran -1, -10);
  ecran.addChild(ecranBordBas);
  
  ecranBordGauche.translate(3,-27, -10+largeurEcran-1);
  ecran.addChild(ecranBordGauche);
  
  ecranBordDos.translate(3,-27, -9);
  ecran.addChild(ecranBordDos);

  ecranEcran.translate(4,-27, -9);
  ecran.addChild(ecranEcran);
  
  return ecran;
}

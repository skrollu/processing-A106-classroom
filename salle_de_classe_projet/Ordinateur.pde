PShape creerOrdinateur(int leftOrRight){ //l = 0 r = 1
  PShape ordinateurGroup;
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
  PShape clavier;
  
  Forme formeOrdinateur = new Forme(longueurOrdinateur,largeurOrdinateur,hauteurOrdinateur);
  Forme formeEcranPlateau = new Forme(10,12,1);
  Forme formeEcranPied = new Forme(2,4,15);
  //Forme formeEcranBord = new Forme(3,largeurEcran , hauteurEcran);
  Forme formeEcranBordHaut = new Forme(3,largeurEcran , 1);
  Forme formeEcranBordDroite = new Forme(3,1 , hauteurEcran-2);
  Forme formeEcranBordBas = new Forme(3,largeurEcran , 1);
  Forme formeEcranBordGauche = new Forme(3,1 , hauteurEcran-2);
  Forme formeEcranBordDos = new Forme(1, largeurEcran-2 , hauteurEcran-2);
  Forme formeEcranEcran = new Forme(1, largeurEcran-2 , hauteurEcran-2);
  Forme formeClavier = new Forme(largeurClavier, longueurClavier, hauteurClavier);
  
  ordinateur = formeOrdinateur.getForme();
  ecranPlateau = formeEcranPlateau.getForme();
  ecranPied = formeEcranPied.getForme();
  ecranBordHaut = formeEcranBordHaut.getForme();
  ecranBordDroite = formeEcranBordDroite.getForme();
  ecranBordBas = formeEcranBordBas.getForme();
  ecranBordGauche = formeEcranBordGauche.getForme();
  ecranBordDos = formeEcranBordDos.getForme();
  ecranEcran = formeEcranEcran.getForme();
  clavier = formeClavier.getForme();
  
  ecran = createShape(GROUP);
  
  ecranPlateau.translate(0, -1, 0);
  ecran.addChild(ecranPlateau);
  
  ecranPied.translate(1,-16,4);
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
  
  ordinateurGroup = createShape(GROUP);
  
  ordinateurGroup.addChild(ecran);
  
  if(leftOrRight == 0){ //left
    ordinateur.translate(-5,-hauteurOrdinateur,-largeurOrdinateur);
  } else if (leftOrRight == 1){ //right
    ordinateur.translate(-5,-hauteurOrdinateur,-35);
  } else { // right by default
    ordinateur.translate(-5,-hauteurOrdinateur,-35);
  }
  
  clavier.translate(18, -hauteurClavier, -10);
  ordinateurGroup.addChild(clavier);

  ordinateurGroup.addChild(ordinateur);
  return ordinateurGroup;
}

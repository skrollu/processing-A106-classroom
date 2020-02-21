PShape creerOrdinateur(int leftOrRight){ //l = 0 r = 1
  PShape ordinateurGroup;
  PShape ecranGroup;
  
  PShape ordinateur = creerForme(longueurOrdinateur,largeurOrdinateur,hauteurOrdinateur, 40, noir, shininessObjet, 0);
  PShape ecranPlateau = creerForme(longueurEcranPlateau, largeurEcranPlateau,1, 40, noir, shininessObjet, 40);
  PShape ecranPied = creerForme(2,4,15, 120, gris, shininessObjet, 120);
  //Forme formeEcranBord = creerForme(3,largeurEcran , hauteurEcran); // forme de départ pour l'écran
  PShape ecranBordHaut = creerForme(3,largeurEcran , 1, 15, noir, shininessObjet, 15);
  PShape ecranBordDroite = creerForme(3,1 , hauteurEcran-2, 15, noir, shininessObjet, 15);
  PShape ecranBordBas = creerForme(3,largeurEcran , 1, 15, noir, shininessObjet ,15);
  PShape ecranBordGauche = creerForme(3,1 , hauteurEcran-2, 15, noir, shininessObjet ,15 );
  PShape ecranBordDos = creerForme(1, largeurEcran-2 , hauteurEcran-2, 15,noir, shininessObjet, 15);
  
  PShape ecranEcran = creerForme(1, largeurEcran-2 , hauteurEcran-2, 75, fondEcran, shininessObjetBrillant, 0);
  
  PShape clavier = creerForme(largeurClavier, longueurClavier, hauteurClavier, 0, clavierTexture, shininessObjet, 0);
  
  ecranGroup = createShape(GROUP);
  
  ecranPlateau.translate(0, -1, 0);
  ecranGroup.addChild(ecranPlateau);
  
  ecranPied.translate(1,-16,4);
  ecranGroup.addChild(ecranPied);
  
  ecranBordHaut.translate(3,-28, -10);
  ecranGroup.addChild(ecranBordHaut);
  
  ecranBordDroite.translate(3,-27, -10);
  ecranGroup.addChild(ecranBordDroite);
  
  ecranBordBas.translate(3,-28 + hauteurEcran -1, -10);
  ecranGroup.addChild(ecranBordBas);
  
  ecranBordGauche.translate(3,-27, -10+largeurEcran-1);
  ecranGroup.addChild(ecranBordGauche);
  
  ecranBordDos.translate(3,-27, -9);
  ecranGroup.addChild(ecranBordDos);

  ecranEcran.translate(4,-27, -9);
  ecranGroup.addChild(ecranEcran); 
  
  ordinateurGroup = createShape(GROUP);
  
  ordinateurGroup.addChild(ecranGroup);
  
  switch(leftOrRight){
    case 0: ordinateur.translate(-5,-hauteurOrdinateur, hauteurOrdinateur); break; //left
    case 1: ordinateur.translate(-5,-hauteurOrdinateur, -hauteurOrdinateur); break; //right
    default: ordinateur.translate(-5,-hauteurOrdinateur,-hauteurOrdinateur); break; //right
  }
  
  clavier.translate(18, -hauteurClavier, -10);
  ordinateurGroup.addChild(clavier);

  ordinateurGroup.addChild(ordinateur);
  return ordinateurGroup;
}

PShape creerFenetre () {
  
  //PShape fenetre = creerForme(longueurFenetre,epaisseurFenetre,hauteurFenetre, color(237, 237, 237, 40), null);

  PShape fenetreBordHaut= creerForme(longueurFenetre, epaisseurFenetre, 5, 20, noir, 100, 0);
  PShape fenetreBordBas = creerForme(longueurFenetre, epaisseurFenetre, 5, 20, noir, 100, 0);
  PShape fenetreBordGauche = creerForme(5, epaisseurFenetre, hauteurFenetre-10, 20, noir, 100, 0);
  PShape fenetreBordDroite = creerForme(5, epaisseurFenetre, hauteurFenetre-10, 20, noir, 100, 0);
  PShape fenetreVerre = creerForme(longueurFenetre-10, epaisseurFenetre,hauteurFenetre-10, color(237, 237, 237, 10), vide, 200, 0);

  PShape fenetreGroup = createShape(GROUP);

    fenetreVerre.translate(5, 5, 0);
    fenetreBordHaut.translate(0, 0, 0);
    fenetreBordBas.translate(0, 145, 0);
    fenetreBordGauche.translate(195, 5, 0);
    fenetreBordDroite.translate(0, 5, 0);

    fenetreGroup.addChild(fenetreVerre);
    fenetreGroup.addChild(fenetreBordGauche);
    fenetreGroup.addChild(fenetreBordDroite);
    fenetreGroup.addChild(fenetreBordHaut);
    fenetreGroup.addChild(fenetreBordBas);
    
  return fenetreGroup;
}

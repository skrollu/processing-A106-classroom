PShape creerSalle(){

  //PShape piece = creerForme(980, 595, 280, 255); //modèle de départ de la salle
  PShape murTableau = creerForme(epaisseurMur, largeurSalle+10, hauteurSalle, color(225, 192, 157), peintureMarron);
  PShape murCouloir = creerForme(longueurSalle, epaisseurMur, hauteurSalle, color(77, 51, 25), peintureMarron);
  PShape murFond = creerForme(epaisseurMur, largeurSalle+10, hauteurSalle, color(243, 230, 216), peintureCreme);
  
  //PShape murFenetre = creerForme(longueurSalle, epaisseurMur, hauteurSalle, color(243, 230, 216), peintureCreme);
  PShape murFenetreHaut = creerForme(longueurSalle, epaisseurMur, hauteurOrigineFenetre, color(243, 230, 216), peintureCreme);
  PShape murFenetreBas = creerForme(longueurSalle, epaisseurMur, hauteurSalle-hauteurFenetre-hauteurOrigineFenetre, color(243, 230, 216), peintureCreme);
  PShape murFenetreDroite = creerForme(longueurSalle - (( 4 * longueurFenetre ) + longueurOrigineFenetre + espaceMurEntreFenetre), 5, hauteurSalle, color(243, 230, 216), peintureCreme);
  PShape murFenetreGauche = creerForme(longueurOrigineFenetre, epaisseurMur, hauteurSalle, color(243, 230, 216), peintureCreme);
  PShape murEntreFenetre = creerForme(espaceMurEntreFenetre, epaisseurMur*3, hauteurSalle, color(243, 230, 216), peintureCreme);

  colorMode(HSB, 100);
  PShape murSol = creerForme(longueurSalle+10, largeurSalle+10, 5, color(0, 100, 71), linoRouge);
  colorMode(RGB, 255);
  PShape murPlafond = creerForme(longueurSalle+10, largeurSalle+10, 5, color(219, 204, 204), plafondBlanc);

  PShape porte = creerForme(100,7,200, color(52, 235, 229), porteGrise);
  PShape porteFond = creerForme(7,100,200, color(52, 235, 229), porteGrise);
  PShape porteTableau = creerForme(7,100,200, color(52, 235, 229), porteGrise);

  PShape tableau = creerForme(7,400,140, 20 , tableauVert);
  
  PShape salle = createShape(GROUP);
  
    murTableau.translate(-5,0,-5);
    murCouloir.translate(0,0,-5);
    murFond.translate(longueurSalle,0,-5);
    
    //murFenetre.translate(0,0,595);
    murFenetreHaut.translate(0,0,largeurSalle);
    murFenetreBas.translate(0,hauteurFenetre + hauteurOrigineFenetre ,largeurSalle);
    murFenetreGauche.translate(0,0,largeurSalle); // cote tableau
    murFenetreDroite.translate(longueurSalle - espaceMurEntreFenetre,0,largeurSalle); //fond de la salle
    murEntreFenetre.translate(longueurSalle - longueurFenetre - espaceMurEntreFenetre - espaceMurEntreFenetre, 0, largeurSalle - epaisseurMur*2);
    
    murSol.translate(-5,280,-5);
    murPlafond.translate(-5,-5,-5);
    porte.translate(30,80,-6);
    porteFond.translate(979,80,480);
    porteTableau.translate(-6,80,480);
    tableau.translate(-6,80,60);
    
    //salle.addChild(piece);
    salle.addChild(murTableau);
    salle.addChild(murCouloir);
    salle.addChild(murFond);
    
    //salle.addChild(murFenetre);
    salle.addChild(murFenetreHaut);
    salle.addChild(murFenetreBas);
    salle.addChild(murFenetreDroite);
    salle.addChild(murFenetreGauche);
    salle.addChild(murEntreFenetre);
    
    salle.addChild(murSol);
    salle.addChild(murPlafond);
    salle.addChild(porte);
    salle.addChild(porteFond);
    salle.addChild(porteTableau);
    salle.addChild(tableau);
  
  return salle;
}

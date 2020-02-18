PShape creerSalle(){

  //PShape piece = creerForme(980, 595, 280, 255); //modèle de départ de la salle
  PShape murTableau = creerForme(5, 605, 280, color(225, 192, 157), peintureCreme);
  PShape murCouloir = creerForme(980, 5, 280, color(77, 51, 25), peintureMarron);
  PShape murFond = creerForme(5, 605, 280, color(243, 230, 216), peintureCreme);
  PShape murFenetre = creerForme(980, 5, 280, color(243, 230, 216), peintureMarron);
  
  colorMode(HSB, 100);
  PShape murSol = creerForme(990, 605, 5, color(0, 100, 71), linoRouge);
  colorMode(RGB, 255);
  PShape murPlafond = creerForme(990, 605, 5, color(219, 204, 204), plafondBlanc);

  PShape porte = creerForme(100,7,200, color(52, 235, 229), porteGrise);
  PShape porteFond = creerForme(7,100,200, color(52, 235, 229), porteGrise);
  PShape porteTableau = creerForme(7,100,200, color(52, 235, 229), porteGrise);

  PShape tableau = creerForme(7,400,140, 20 , tableauVert);
  
  PShape salle = createShape(GROUP);
  
    murTableau.translate(-5,0,-5);
    murCouloir.translate(0,0,-5);
    murFond.translate(980,0,-5);
    murFenetre.translate(0,0,595);
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
    salle.addChild(murFenetre);
    salle.addChild(murSol);
    salle.addChild(murPlafond);
    salle.addChild(porte);
    salle.addChild(porteFond);
    salle.addChild(porteTableau);
    salle.addChild(tableau);
  
  return salle;
}

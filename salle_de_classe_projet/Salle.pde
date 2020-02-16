PShape creerSalle(){
  PShape piece;
  PShape murTableau;
  PShape murCouloir;
  PShape murFond;
  PShape murFenetre;
  PShape murSol; 
  PShape murPlafond;
  PShape porte;
  PShape porteFond;
  PShape porteTableau;
  PShape tableau;
 
  //Forme formeSalle = new Forme(980, 595, 280, 255); //modèle de départ de la salle
  Forme formeMurTableau = new Forme(5, 605, 280, color(193, 232, 198), null);
  Forme formeMurCouloir = new Forme(980, 5, 280, color(193, 232, 198), null);
  Forme formeMurFond = new Forme(5, 605, 280, color(193, 232, 198), null);
  Forme formeMurFenetre = new Forme(980, 5, 280, color(193, 232, 198), null);
  Forme formeMurSol = new Forme(990, 605, 5, color(235, 52, 52), null);
  Forme formeMurPlafond = new Forme(990, 605, 5, color(219, 204, 204), null);
  Forme formePorte = new Forme(100,7,200, color(52, 235, 229), null);
  Forme formePorteFond = new Forme(7,100,200, color(52, 235, 229), null);
  Forme formePorteTableau = new Forme(7,100,200, color(52, 235, 229), null);
  Forme formeTableau = new Forme(7,400,140, 255 , null);
  
  //piece = formeSalle.getForme();
  murTableau = formeMurTableau.getForme();
  murCouloir = formeMurCouloir.getForme();
  murFond = formeMurFond.getForme();
  murFenetre = formeMurFenetre.getForme();
  murSol = formeMurSol.getForme();
  murPlafond = formeMurPlafond.getForme();
  porte = formePorte.getForme();
  porteFond = formePorteFond.getForme();
  porteTableau = formePorteTableau.getForme();
  tableau = formeTableau.getForme();
  
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

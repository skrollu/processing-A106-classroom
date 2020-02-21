//plateau: 160 +2.5 *80
//pied: 5*72.5*5

PShape creerTable(){

  PShape plateau = creerForme(longueurPlateau, largeurPlateau, hauteurPlateau, 255, boisBleu, shininessObjetBrillant, 0);
  PShape pied1 = creerForme(5, 5, 72.5, 0, noir, shininessObjetBrillant, 0);
  PShape pied2 = creerForme(5, 5, 72.5, 0, noir, shininessObjetBrillant, 0);
  PShape pied3 = creerForme(5, 5, 72.5, 0, noir, shininessObjetBrillant, 0);
  PShape pied4 = creerForme(5, 5, 72.5, 0, noir, shininessObjetBrillant, 0);
  
  PShape table = createShape(GROUP);

    table.addChild(plateau);
    
    pied1.translate(5, 2.5 ,5);
    pied2.translate(150, 2.5, 5);
    pied3.translate(150, 2.5, 70);
    pied4.translate(5, 2.5, 70);
    
    table.addChild(pied1);
    table.addChild(pied2);
    table.addChild(pied3);
    table.addChild(pied4);
     
  return table;
}

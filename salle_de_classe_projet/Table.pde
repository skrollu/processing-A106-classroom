//plateau: 160 +2.5 *80
//pied: 5*72.5*5

PShape creerTable(){
  
  PShape plateau;
  PShape pied1;
  PShape pied2;
  PShape pied3;
  PShape pied4;
  
  Forme formePlateau = new Forme(longueurPlateau, largeurPlateau, hauteurPlateau);
  Forme formePied1 = new Forme(5, 5, 72.5);
  Forme formePied2 = new Forme(5, 5, 72.5);
  Forme formePied3 = new Forme(5, 5, 72.5);
  Forme formePied4 = new Forme(5, 5, 72.5);
  
  plateau = formePlateau.getForme();
  pied1 = formePied1.getForme(); 
  pied2 = formePied2.getForme();
  pied3 = formePied3.getForme();
  pied4 = formePied4.getForme();
  
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

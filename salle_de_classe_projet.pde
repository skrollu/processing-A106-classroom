PShape salle;
PShape table;
PShape fenetre;
PShape chaise;

void setup() {
  size(1000, 600, P3D);
  
  salle = creerSalle();
  table = creerTable();
  fenetre = creerFenetre();
  chaise = creerChaise();
}

void draw(){
  background(255);
  translate(width/2, height/2, 0);
  
  camera(camX, camY, camZ,
    980, 170, 300,
    0, 1, 0
  ); 
  
  shape(this.salle);
  
  //table professeur
  pushMatrix();
    translate(190, hauteurOrigineTables, 230);
    rotateY(3*(PI/2));
    shape(this.table);
  popMatrix();
  
  //tables du fond
  pushMatrix();
    translate(longueurSalle, hauteurOrigineTables, 50);
    rotateY(3*(PI/2));
    shape(this.table);
  popMatrix();
  
  pushMatrix();
    translate(longueurSalle, hauteurOrigineTables, 50*2 + longueurPlateau);
    rotateY(3*(PI/2));
    shape(this.table);
  popMatrix();
  
  //table de cours   
  pushMatrix();
    translate(270, hauteurOrigineTables, 0);
    for(int i = 0; i < 4; i++){    
      for(int j = 0; j < 3; j++){
        pushMatrix();
          translate(i*(largeurPlateau + espacementTables),0,j*longueurPlateau);
          rotateY(3*(PI/2));
          shape(this.table);
        popMatrix();
      }
    }
  popMatrix();
   
  //chaises élèves
  pushMatrix();
    translate(270, hauteurOrigineChaises, 65);
    for(int i = 0; i < 4; i++){    
      for(int j = 0; j < 3; j++){
        pushMatrix();
          translate(i*(largeurPlateau + espacementTables), 0, j*longueurPlateau);
          shape(this.chaise);
        popMatrix();
      }     
    }
  popMatrix();
  
  //chaise prof
  pushMatrix();
    translate(150, hauteurOrigineChaises, 335);
    rotateY(PI);
    shape(this.chaise);
  popMatrix();
  
  //fenetres
  pushMatrix();
    translate(30,20,594);
    for(int i = 0; i < 4; i++){
      pushMatrix();
        if (i == 3){
          translate(80, 0,0);
        }
        translate(i*200, 0,0);
        shape(this.fenetre);
      popMatrix();
    }
  popMatrix();
  
  bougerCamera();
}

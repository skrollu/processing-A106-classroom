<<<<<<< HEAD
PShader shader;
PImage boisChaise;
PImage boisBleu;
PImage ewok;
=======
import java.util.HashMap;

PShader shader;
PImage boisChaise;
PImage boisBleu;
>>>>>>> 5b5813333b570ad6b7ea9ad7b98e040cfcd284af

PShape salle;
PShape table;
PShape fenetre;
PShape chaise;
PShape ordinateurDroite;
PShape ordinateurGauche;

void setup() {
<<<<<<< HEAD
  size(1250, 900, P3D);
  shader = loadShader("LightShaderTexFrag.glsl","LightShaderTexVert.glsl");
  
  boisChaise = loadImage("boisChaise.jpg");
  boisBleu = loadImage("boisBleu.jpg");
    boisBleu = loadImage("ewok.png");
=======
  size(1000, 600, P3D);
  shader = loadShader("LightShaderTexFrag.glsl","LightShaderTexVert.glsl");
  boisChaise = loadImage("boisChaise.jpg");
  boisBleu = loadImage("boisBleu.jpg");
>>>>>>> 5b5813333b570ad6b7ea9ad7b98e040cfcd284af
  
  salle = creerSalle();
  table = creerTable();
  fenetre = creerFenetre();
  chaise = creerChaise();
<<<<<<< HEAD
  ordinateurGauche = creerOrdinateur(0);
  ordinateurDroite = creerOrdinateur(1);
=======
  ordinateur = creerOrdinateur(1);
>>>>>>> 5b5813333b570ad6b7ea9ad7b98e040cfcd284af
  
  keyMap = new HashMap<Character, Boolean>();
}

void draw(){
  background(255);
  translate(width/2, height/2, 0);
  bougerCamera();
  
  shader(shader);
  shape(this.salle);
  
  //table professeur
  pushMatrix();
    translate(190, hauteurOrigineTables, distanceTableProfZ);
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
    
  //ordinateur professeur
  pushMatrix();
    translate(180, hauteurOrigineTables , distanceTableProfZ + (longueurPlateau/2) + (largeurEcran/2));
    rotateY(PI);
    shape(this.ordinateurDroite);
  popMatrix();
  
  shape(ordinateurDroite);
  shape(ordinateurGauche);
  
  pushMatrix();
    translate(210, hauteurOrigineTables , (longueurPlateau/4));
    shape(this.ordinateurDroite);
    for(int i = 0; i < 4; i++){    
      for(int j = 0; j < 3; j++){
        pushMatrix();
          translate(i*(largeurPlateau + espacementTables), 0, j*longueurPlateau);
          shape(this.ordinateurDroite);
        popMatrix();
      }     
    }
  popMatrix();
   
  pushMatrix();
    translate(210, hauteurOrigineTables , (longueurPlateau - (longueurPlateau/4) - largeurEcranPlateau));
    shape(this.ordinateurGauche);
    for(int i = 0; i < 4; i++){    
      for(int j = 0; j < 3; j++){
        pushMatrix();
          translate(i*(largeurPlateau + espacementTables), 0, j*longueurPlateau);
          shape(this.ordinateurGauche);
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
}

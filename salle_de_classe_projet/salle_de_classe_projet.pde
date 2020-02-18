import java.util.HashMap;

PShader shaderTexture;
PShader shaderLumiere;

PImage boisChaise;
PImage boisBleu;
PImage linoRouge;
PImage tableauVert;
PImage peintureMarron;
PImage peintureCreme;
PImage porteGrise;
PImage plafondBlanc;
PImage fondEcran;
PImage clavierTexture;

PShape salle;
PShape table;
PShape fenetre;
PShape chaise;
PShape ordinateurDroite;
PShape ordinateurGauche;
PShape lumiere;

void setup() {

  size(1980, 1200, P3D);
  shaderLumiere = loadShader("Lambert1DiffuseFrag.glsl","Lambert1DiffuseVert.glsl");
  shaderTexture = loadShader("LightShaderTexFrag.glsl","LightShaderTexVert.glsl");

  boisChaise = loadImage("boisChaise.jpg");
  boisBleu = loadImage("boisBleu.jpg");
  linoRouge = loadImage("linoRouge3.jpg");
  tableauVert = loadImage("tableau.png");
  peintureMarron = loadImage("peintureMarron.jpg");
  peintureCreme = loadImage("peintureCreme.jpg");
  porteGrise = loadImage("porte.jpg");
  plafondBlanc = loadImage("plafond.jpg");
  fondEcran = loadImage("fondEcran.png");
  clavierTexture = loadImage("clavier.jpg");

  salle = creerSalle();
  table = creerTable();
  fenetre = creerFenetre();
  chaise = creerChaise();
  lumiere = creerLumiere();
  
  ordinateurGauche = creerOrdinateur(0);
  ordinateurDroite = creerOrdinateur(1);

  keyMap = new HashMap<Character, Boolean>();
}

void draw(){
  background(255);
  translate(width/2, height/2, 0);
  bougerCamera();

  //Point Light
  shader(shaderLumiere);
  for(int i=0; i<lightPos.length; i++) {
      pushMatrix();
          noStroke();
          translate(lightPos[i].x, lightPos[i].y, lightPos[i].z);
          box(10, 10, 10);
      popMatrix();
  }  

  shader(shaderTexture);
  
  //mise en scene des neons
  pushMatrix();
  translate(longueurLumiere, 0, longueurLumiere*2);
    for(int i = 0; i < 3; i++){
      for(int j = 0; j < 2; j++){
        pushMatrix();
          translate((i*longueurLumiere*2), 0, j*longueurLumiere);
          shape(this.lumiere);
        popMatrix();
      }
    }
  popMatrix();

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
  
  //ordinateur droit puis gauche
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

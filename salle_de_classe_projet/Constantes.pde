//Dimension composant
float longueurSalle = 980;
float largeurSalle = 595;
float hauteurSalle = 280;

float longueurPlateau = 160;
float largeurPlateau = 80;
float hauteurPlateau = 2.5;

float longeurPiedTable = 5;
float largeurPiedTable = 5;
float hauteurPiedTable = 72.5;

float longueurFenetre = 200;
float epaisseurFenetre = 7;
float hauteurFenetre = 150;

float longueurPiedChaise = 2;
float largeurPiedChaise = 2;
float hauteurPiedArriereChaise = 100;
float hauteurPiedAvantChaise = 50;
float longueurAssiseChaise = 50;
float largeurAssiseChaise = 50;
float hauteurAssiseChaise = 3;
float longueurDossierChaise = 46;
float largeurDossierChaise = 1;
float hauteurDossierChaise = 40;

float largeurEcran = 32;
float hauteurEcran = 20;

float longueurClavier = 30;
float largeurClavier = 15;
float hauteurClavier = 1;

float longueurOrdinateur = 30;
float largeurOrdinateur = 15;
float hauteurOrdinateur = 35;

float largeurEcranPlateau = 12;
float longueurEcranPlateau = 10;

float longueurLumiere = 120;
float largeurLumiere = 35;
float hauteurLumiere = 5;

//Placement par rapport à l'origine
float espacementTables = 100;
float hauteurOrigineTables = 205;

float espacementChaisesTables = 20;
float hauteurOrigineChaises = 227;

float distanceTableProfZ = 230;


PVector[] lightPos = { 
 new PVector((longueurLumiere + (longueurLumiere/2)), 0, ((2*longueurLumiere) + (largeurLumiere/2))),
 new PVector((3*longueurLumiere) + (longueurLumiere/2), 0, ((2*longueurLumiere) + (largeurLumiere/2))),
 new PVector((5*longueurLumiere) + (longueurLumiere/2), 0, ((2*longueurLumiere) + (largeurLumiere/2))),
 new PVector((longueurLumiere + longueurLumiere/2), 0, ((3*longueurLumiere) + (largeurLumiere/2))),
 new PVector(((3*longueurLumiere) + longueurLumiere/2), 0, ((3*longueurLumiere) + (largeurLumiere/2))),
 new PVector(((5*longueurLumiere) + longueurLumiere/2), 0, ((3*longueurLumiere) + (largeurLumiere/2)))
};

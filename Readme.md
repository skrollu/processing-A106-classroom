# Salle A106 PROCESSING

- Année : M1 iWOCS
- Matière: INFOGRAPHIE
- Projet: Modélisation Salle A106

## Auteur(s)

|Nom|Prénom|login|email|
|--|--|--|--|
| Ibersien | Mathieu | im161726 | mathieu.ibersien@etu.univ-lehavre.fr |

## Travail réalisé

### Guides des Touches

#### Allumer la lumière:
L: allumer la lumière

La gestion des lumières étant mauvaise, je vous conseil de tester les deux modes pour explorer la Salle A 106.

#### (Z-Q-S-D):
Pour gérer le déplacement de notre caméra (nos yeux):
Z: Avancer (Axe: X)
S: Reculer (Axe: X)
Q: Gauche (Axe: Z)
D: Droite (Axe: Z)

#### ()
Pour gérer la direction de notre regard (Centre de la caméra), utiliser les flèches directionnelles:

↑: Haut (Axe Y):
↓: Bas (Axe Y):
←: Gauche (Axe Z):
➔: Droite (Axe Z):

### Gestion de la Caméra

Le regard est fixé au fond de la salle. Les déplacements dans l'espace se font selon les axes de manières séparé plut^t que sur un vecteur (par manque de temps).
Il n'est d'ailleurs pas possible de faire un tour complet avec la caméra, pour cela quelques solutions "bricolage" on été trouvé mais ne donne pas un très bon résultat comme limiter par un maximum/minimum la dé/incrémentation des variables "centreXYZ" et faire un mouvement en conséquence pour contrer l'effet de "bloquage" actuel quand notre tête atteint environ 90 degré à droite ou à gauche.

### Propositions d'améliorations: 

#### Caméra:

La Caméra est actuellement mal gérée, pour une amélioration très nette on pourrait d'abord par prendre en compte des vecteurs directionnelles de notre caméra qui se multiplieraient par
une vitesse constante.

La direction du regard de la caméra elle pourrait être gérée par le pointeur de la souris qui serait aussi géré par un vercteur et multiplié en conséquence par une sensibilité constante.

#### Lumière: 

Meilleure gestion des normales et des fontions ambiantLight(), emissive(), lightSpecular(), shininess() etc...


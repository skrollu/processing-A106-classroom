# Salle A106 PROCESSING

- Année : M1 iWOCS 2019-2020
- Matière: INFOGRAPHIE
- Projet: Modélisation Salle A106

## Auteur(s)

|Nom|Prénom|email|
|--|--|--|
| Ibersien | Mathieu | mathieu.ibersien@etu.univ-lehavre.fr |

## Travail réalisé

Ce projet a été réalisé dans le cadre de la matière "infographie" enseignée en Master 1 IWOCS à l'université du Havre. Le but était de reproduire une salle de classe (A106) en processing en utilisant des textures et shader (peu fonctionnel ici), en implémentant une caméra pour se déplacer dans l'espace et en gérant la création de beaucoup d'objets proprement pour ne pas surcharger la mémoire.

### Guides des Touches

#### Allumer la lumière:
L: allumer la lumière

La gestion des lumières étant mauvaise, je vous conseil de tester les deux modes pour explorer la Salle A 106.

#### Direction (Z-Q-S-D):
Pour gérer le déplacement de notre caméra (nos yeux):

    Z: Avancer (Axe: X)
    S: Reculer (Axe: X)
    Q: Gauche (Axe: Z)
    D: Droite (Axe: Z)

#### Regard (↑ Haut, ↓ Bas, ← Gauche, ➔ Droite)
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


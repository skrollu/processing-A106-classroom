  PShape creerForme(float longueur,float largeur, float hauteur, color couleur, PImage texture, float shininess, float emissive){

    PVector a,b,c,d,e,f,g,h;
     
    //Cote entrée + tableau
    a = new PVector(0, 0, 0);
    b = new PVector(0, hauteur, 0);
    c = new PVector(0, hauteur, largeur);
    d = new PVector(0, 0, largeur);
    //Cote mur du fond
    e = new PVector(longueur, 0, 0);
    f = new PVector(longueur, hauteur, 0);
    g = new PVector(longueur, hauteur, largeur);
    h = new PVector(longueur, 0, largeur);
    
    PShape forme = createShape();
    forme.beginShape(QUADS);
    forme.noStroke(); 
    forme.fill(couleur);
    
    forme.textureMode(NORMAL);
    forme.texture(texture);

    forme.shininess(shininess);
    forme.shininess(emissive);
   
    //ABCD
    forme.normal(1, 0, 0);
    forme.vertex(a.x, a.y, a.z, 1, 0);    
    forme.vertex(b.x, b.y, b.z, 1, 1);   
    forme.vertex(c.x, c.y, c.z, 0, 1);   
    forme.vertex(d.x, d.y, d.z, 0, 0);  
     
    //ABFE
    forme.normal(0, 0, 1);
    forme.vertex(a.x, a.y, a.z, 0, 0);    
    forme.vertex(b.x, b.y, b.z, 1, 0);  
    forme.vertex(f.x, f.y, f.z, 1, 1);
    forme.vertex(e.x, e.y, e.z, 0, 1);
  
    //EFGH
    forme.normal(1, 0, 0);
    forme.vertex(e.x, e.y, e.z, 0, 0);
    forme.vertex(h.x, h.y, h.z, 1, 0);
    forme.vertex(g.x, g.y, g.z, 1, 1);
    forme.vertex(f.x, f.y, f.z, 0, 1);
     
    //HDCG
    forme.normal(0, 0, -1);
    forme.vertex(h.x, h.y, h.z, 1, 0);
    forme.vertex(d.x, d.y, d.z, 0, 0);   
    forme.vertex(c.x, c.y, c.z, 0, 1); 
    forme.vertex(g.x, g.y, g.z, 1, 1);
        
    //AEHD
    forme.normal(0, -1, 0);
    forme.vertex(a.x, a.y, a.z, 0, 0);   
    forme.vertex(e.x, e.y, e.z, 1, 0);
    forme.vertex(h.x, h.y, h.z, 1, 1);
    forme.vertex(d.x, d.y, d.z, 0, 1);
      
    //BFGC
    forme.normal(0, -1, 0);
    forme.vertex(b.x, b.y, b.z, 0, 0);    
    forme.vertex(f.x, f.y, f.z, 1, 0);
    forme.vertex(g.x, g.y, g.z, 1, 1);
    forme.vertex(c.x, c.y, c.z, 0, 1);
  
    forme.endShape();
   
    return forme;
  }

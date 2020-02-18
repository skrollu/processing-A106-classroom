  PShape creerForme(float longueur,float largeur, float hauteur, color couleur, PImage texture){

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
    
    PShape cube = createShape();
    cube.beginShape(QUADS);
    cube.stroke(0); 
    cube.fill(couleur);
    
    cube.textureMode(NORMAL);
    cube.texture(texture);
    cube.shininess(200.0);
    cube.emissive(0, 0, 0);
    cube.normal(0, 0, 1);

    //ABCD
    cube.vertex(a.x, a.y, a.z, 0, 0);    
    cube.vertex(b.x, b.y, b.z, 1, 0);   
    cube.vertex(c.x, c.y, c.z, 1, 1);   
    cube.vertex(d.x, d.y, d.z, 0, 1);  
     
    //ABFE
    cube.vertex(a.x, a.y, a.z, 0, 0);    
    cube.vertex(b.x, b.y, b.z, 1, 0);  
    cube.vertex(f.x, f.y, f.z, 1, 1);
    cube.vertex(e.x, e.y, e.z, 0, 1);
  
    //EFGH
    cube.vertex(e.x, e.y, e.z, 0, 0);
    cube.vertex(h.x, h.y, h.z, 1, 0);
    cube.vertex(g.x, g.y, g.z, 1, 1);
    cube.vertex(f.x, f.y, f.z, 0, 1);
     
    //HDCG
    cube.vertex(h.x, h.y, h.z, 0, 0);
    cube.vertex(d.x, d.y, d.z, 1, 0);   
    cube.vertex(c.x, c.y, c.z, 1, 1); 
    cube.vertex(g.x, g.y, g.z, 0, 1);
        
    //AEHD
    cube.vertex(a.x, a.y, a.z, 0, 0);   
    cube.vertex(e.x, e.y, e.z, 1, 0);
    cube.vertex(h.x, h.y, h.z, 1, 1);
    cube.vertex(d.x, d.y, d.z, 0, 1);
      
    //BFGC
    cube.vertex(b.x, b.y, b.z, 0, 0);    
    cube.vertex(f.x, f.y, f.z, 1, 0);
    cube.vertex(g.x, g.y, g.z, 1, 1);
    cube.vertex(c.x, c.y, c.z, 0, 1);
  
    cube.endShape();
    
    resetShader();
    
    return cube;
  }

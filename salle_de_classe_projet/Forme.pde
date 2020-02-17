class Forme{
  
  float longueur, largeur, hauteur;
  PVector a,b,c,d,e,f,g,h;
  
  PShape forme;

  public Forme (float longueur,float largeur, float hauteur, color couleur, PImage texture){
    this.longueur = longueur;
    this.largeur = largeur;
    this.hauteur = hauteur;
    
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
    
    forme = creerForme(couleur, texture);
  }
 
  PShape getForme(){
    return this.forme;
  }
  
  PShape creerForme(color couleur, PImage texture){
    
    PShape cube = createShape();
    cube.beginShape(QUADS);
    cube.stroke(0); 
    cube.fill(couleur);
    
    cube.textureMode(NORMAL);
    cube.texture(texture);
    cube.shininess(200.0);
    cube.emissive(0, 0, 0);
    cube.normal(0, 0, 1);

    texture(texture);

    //ABCD
    cube.vertex(a.x, a.y, a.z);    
    cube.vertex(b.x, b.y, b.z);   
    cube.vertex(c.x, c.y, c.z);   
    cube.vertex(d.x, d.y, d.z);  
     
    //ABFE
    cube.vertex(a.x, a.y, a.z);    
    cube.vertex(b.x, b.y, b.z);  
    cube.vertex(f.x, f.y, f.z);
    cube.vertex(e.x, e.y, e.z);
  
    //EFGH
    cube.vertex(e.x, e.y, e.z);
    cube.vertex(f.x, f.y, f.z);
    cube.vertex(g.x, g.y, g.z);
    cube.vertex(h.x, h.y, h.z);
     
    //HDCG
    cube.vertex(h.x, h.y, h.z);
    cube.vertex(d.x, d.y, d.z);    
    cube.vertex(c.x, c.y, c.z);  
    cube.vertex(g.x, g.y, g.z);
        
    //AEHD
    cube.vertex(a.x, a.y, a.z);    
    cube.vertex(e.x, e.y, e.z);
    cube.vertex(h.x, h.y, h.z);
    cube.vertex(d.x, d.y, d.z);  
      
    //BFGC
    cube.vertex(b.x, b.y, b.z);     
    cube.vertex(f.x, f.y, f.z);
    cube.vertex(g.x, g.y, g.z);
    cube.vertex(c.x, c.y, c.z);  
  
    cube.endShape();
    
    resetShader();
    
    return cube;
  }
}

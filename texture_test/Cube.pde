PShape creerCube(){
  
  String strTexture = "ewok.png";
  
  PShape cube;
  
  Forme formeCube = new Forme(100, 100, 100, color(255,0,0), strTexture);
  
  cube = formeCube.getForme(); 
  
  return cube;
}


PShader colorShader;

PShape cube;
PShape chaise;
PShape group;

void setup() {
  size(600, 600, P3D);
  colorShader = loadShader("Lambert1DiffuseFrag.glsl", "Lambert1DiffuseVert.glsl");
  
  cube = creerCube();
}

void draw() {
  background(255);
  shader(colorShader);
  shape(cube);
  
  camera(
     camX, camY, camZ,
     0, 0, 0,
     0, 1, 0);
  
  bougerCamera();
}

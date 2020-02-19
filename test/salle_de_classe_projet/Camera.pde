// Multiples keys pressed at the same time 
HashMap<Character, Boolean> keyMap;

PVector position;
PVector velocity;

PVector center;
PVector up;
PVector right;
PVector forward;

float vitesseDeplacement = 10;

void setupCamera(){
  position = new PVector(0f, 0f, 0f);
  velocity = new PVector(0f, 0f, 0f);
}

void bougerCamera() {
  
    camera(position.x, position.y, position.z, 
            center.x, center.y, center.z,
            0,1,0);
          
    //Mouvement caméra axe X - Z (Touches: ZQSD)
    if (keyMap.containsKey('z') && keyMap.get('z')){
      velocity.add(PVector.mult(right, vitesseDeplacement));
    }
}

void keyPressed(KeyEvent event) {
  
  //print("Centre ( " + centreX +" , " + centreY +" , " + centreZ +" )"); 
  //peut etre amélioré
  if(key == CODED){
    if(keyCode == LEFT){
      keyMap.put('k', true);
    }
    if(keyCode == RIGHT){
      keyMap.put('m', true);      
    }
    if(keyCode == UP){
      keyMap.put('o', true);
    }
    if(keyCode == DOWN){
      keyMap.put('l', true);      
    }
  }
  char k = event.getKey();
  println("keyPressed => " + k);
  keyMap.put(Character.toLowerCase(k), true);
}

void keyReleased(KeyEvent event){
  if(key == CODED){
      if(keyCode == LEFT){
        keyMap.put('k', false);
      }
      if(keyCode == RIGHT){
        keyMap.put('m', false);      
      }
      if(keyCode == UP){
        keyMap.put('o', false);
      }
      if(keyCode == DOWN){
        keyMap.put('l', false);   
      }
  }
  char k = event.getKey();
  println("keyReleased => " + k);
  keyMap.put(Character.toLowerCase(k), false);
}

void mousePressed(){
  //centreZ = (pmouseX - mouseX);
}

void mouseReleased(){
 
}

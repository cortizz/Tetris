int col = 10;
int fil = 20;
String[] Fichas = { "O", "L1", "T", "I", "S", "Z", "L2" }; //matriz de letras que contiene la letra que representa cada ficha
String letra = Fichas[int(random(7))]; //Elección al azar de una pieza
int x = 0; //valor x usado mas adelante
int[] O = {120,0,120,60, 180,60,180,0}; //Estas matrices definen cada una de las coordenadas de los vertices
int[] L1 = {150,0,150,60,120,60,120,90,180,90,180,0};
int[] L2 = {120,0,120,90,180,90,180,60,150,60,150,0};
int[] T = {120,0,120,30,90,30,90,60,180,60,180,30,150,30,150,0};
int[] I = {120,0,120,120,150,120,150,0};
int[] S = {120,0,120,30,90,30,90,60,150,60,150,30,180,30,180,0};
int[] Z = {90,0,90,30,120,30,120,60,180,60,180,30,150,30,150,0};
PShape FO(int[] O, int x){ //Función creada para cada ficha que les permitirá ser dibujadas en el tablero
  PShape FO = createShape(); //Crea la variable en la que se guardará la figura
  FO.beginShape();
  FO.fill(#FFF63A);
  FO.strokeWeight(1);
  while (x < 8){
    FO.vertex(O[x],O[x+1]); //Ubica cada vertice para unirlos con los que se definirán despues
    x += 2;}
  x = 0;
  FO.endShape(CLOSE);
  return FO;}
PShape FL1(int[] L1, int x){
  PShape FL1 = createShape();
  FL1.beginShape();
  FL1.fill(#ECB814);
  FL1.strokeWeight(1);
  while (x < 12){
    FL1.vertex(L1[x],L1[x+1]);
    x += 2;}
  x = 0;
  FL1.endShape(CLOSE);
  return FL1;}
PShape FT(int[] T, int x){
  PShape FT = createShape();
  FT.beginShape();
  FT.fill(#F05DC5);
  FT.strokeWeight(1);
  while (x < 16){
    FT.vertex(T[x],T[x+1]);
    x += 2;}
  x = 0;
  FT.endShape(CLOSE);
  return FT;}
PShape FI(int[] I, int x){
  PShape FI = createShape();
  FI.beginShape();
  FI.fill(#682A43);
  FI.strokeWeight(1);
  while (x < 8){
    FI.vertex(I[x],I[x+1]);
    x += 2;}
  x = 0;
  FI.endShape(CLOSE);
  return FI;}
PShape FS(int[] S, int x){
  PShape FS = createShape();
  FS.beginShape();
  FS.fill(#52E532);
  FS.strokeWeight(1);
  while (x < 16){
    FS.vertex(S[x],S[x+1]);
    x += 2;}
  x = 0;
  FS.endShape(CLOSE);
  return FS;}
PShape FZ(int[] Z, int x){
  PShape FZ = createShape();
  FZ.beginShape();
  FZ.fill(#D8122F);
  FZ.strokeWeight(1);
  while (x < 16){
    FZ.vertex(Z[x],Z[x+1]);
    x += 2;}
  x = 0;
  FZ.endShape(CLOSE);
  return FZ;}
PShape FL2(int[] L2, int x){
  PShape FL2 = createShape();
  FL2.beginShape();
  FL2.fill(#4A0000);
  FL2.strokeWeight(1);
  while (x < 12){
    FL2.vertex(L2[x],L2[x+1]);
    x += 2;}
  x = 0;
  FL2.endShape(CLOSE);
  return FL2;}
void setup(){
  size(300,600);
  background(#76E8F2);
  int[][] Tetris = new int[col][fil]; //Se utilizó una matriz del tamaño del tablero para crear una cuadricula
  for (int i = 0; i < col; i++) {
    for (int j = 0; j < fil; j++) {
      Tetris[i][j] = 0;}}
  for (int x = 0; x < 11; x++){
    line(x*30, 0, x*30,600);}
  for (int y = 0; y < 21; y++){
    line(0, y*30, 300,y*30);}}  
void draw(){
  if (letra == "O"){ //Condicional que generará una pieza dependiendo del resultado al azar definido previamente
    PShape FO = FO(O, x);
    shape(FO); // Dibuja la figura
    // int m = millis();
    while (true){ //Ciclo que permitirá crear una nueva figura un cuadro mas abajo hasta llegar a la base del tablero
      for (int i = 1; i < 19; i++){
      // if (millis() - m >= 1500){
        translate(0,30);
        shape(FO);}
        // m = millis();}
      break;}}
  else if (letra == "L1"){
    PShape FL1 = FL1(L1, x);
    shape(FL1);
    while (true){
      for (int i = 1; i < 18; i++){
        translate(0,30);
        shape(FL1);}
      break;}}
  else if (letra == "T"){
    PShape FT = FT(T, x);
    shape(FT);
    while (true){
      for (int i = 1; i < 19; i++){
        translate(0,30);
        shape(FT);}
      break;}}
  else if (letra == "I"){
    PShape FI = FI(I, x);
    shape(FI);
    while (true){
      for (int i = 1; i < 17; i++){
        translate(0,30);
        shape(FI);}
      break;}}
  else if (letra == "S"){
    PShape FS = FS(S, x);
    shape(FS);
    while (true){
      for (int i = 1; i < 19; i++){
        translate(0,30);
        shape(FS);}
      break;}}
  else if (letra == "Z"){
    PShape FZ = FZ(Z, x);
    shape(FZ);
    while (true){
      for (int i = 1; i < 19; i++){
        translate(0,30);
        shape(FZ);}
      break;}}
  else if (letra == "L2"){
    PShape FL2 = FL2(L2, x);
    shape(FL2);
    while (true){
      for (int i = 1; i < 18; i++){
        translate(0,30);
        shape(FL2);}
      break;}}}

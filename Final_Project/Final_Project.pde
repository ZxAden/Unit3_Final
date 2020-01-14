import ddf.minim.*;
import ddf.minim.effects.*;
ArrayList<Planet> planets = new ArrayList<Planet>();
ArrayList<Planet> planetsB = new ArrayList<Planet>();
ArrayList<Planet> planetsT = new ArrayList<Planet>();
ArrayList<Planet2> planets2 = new ArrayList<Planet2>();
ArrayList<Planet2> planetsB2 = new ArrayList<Planet2>();
ArrayList<Planet2> planetsT2 = new ArrayList<Planet2>();
Sky _Sky;
Minim minim;
AudioPlayer Music;
int BG1;
int BG2;
int backgroundR = 209;
int backgroundG = 153;
int backgroundB = 198;
float colorConstrain;
boolean stars = true;
void setup() {
  fullScreen();
  //size(640, 540);
  frameRate(24);
  Planet planet1 = new Planet();
  Planet2 planet2 = new Planet2();
  _Sky= new Sky();
  planet1.s = 0.002;
  planet1.r = 35;
  planets.add(planet1);
  planet2.s2 = 0.002;
  planet2.r2 = 35;
  planets2.add(planet2);
  minim = new Minim(this);
  Music = minim.loadFile("Music.mp3", 2048);
}
float Orbit = 800;
float Orbit2 = 400;
float Orbit3 = 400;
float Orbit4 = 800;
float rSun = 250;
int i;
void draw() {
  BG1 = color(255, 153, 153);
  BG2 = color(153, 255, 153);
  colorConstrain = map(mouseX, 0, width, .0, 1);
  color backgroundColor = lerpColor(BG1, BG2, colorConstrain);
  background(backgroundColor);
  if (!stars) 
  {
    translate(width/2, height/2);
    _Sky.SuperFormula();
    _Sky.Key();
    rotate(radians(-25));
    planetsB = new ArrayList<Planet>();
    planetsT = new ArrayList<Planet>();
    for (Planet planet : planets) {
      planet.setCoords(millis(), Orbit, Orbit2);
      planetsB.add(planet);
      planetsT.add(planet);
    }
  }
    if (!stars) 
  {
    rotate(radians(-25));
    planetsB2 = new ArrayList<Planet2>();
    planetsT2 = new ArrayList<Planet2>();
    for (Planet2 planet2 : planets2) {
      planet2.setCoords(millis(), Orbit3, Orbit4);
      planetsB2.add(planet2);
      planetsT2.add(planet2);
    }
  }
  for (Planet planet : planetsT) {
    planet.display();
  }
  for (Planet planet : planetsB) {
    planet.display();
  }
  for (Planet2 planet2 : planetsT2) {
    planet2.display();
  }
  for (Planet2 planet2 : planetsB2) {
    planet2.display();
  }
}
void mousePressed() {
  Planet planet1 = new Planet();
  Planet2 planet2 = new Planet2();
  planet1.s = random(0.0001, 0.004);
  planet1.r = random(20, 70);
  planets.add(planet1);
  planet2.s2 = random(0.0001, 0.004);
  planet2.r2 = random(20, 70);
  planets2.add(planet2);
  Music.loop();
}

class Planet {
  float x;
  float y;
  float r;
  float s;
  float t;
  void setCoords(float millis, float rOrbit, float rOrbit2) {
    this.x = sin(millis * this.s) * rOrbit/2;
    this.y = cos(millis * this.s) * rOrbit2/2;
  }
  void display() {
    fill(101,27,150);
    strokeWeight(5);
    stroke(0);
    ellipse(this.x, this.y, this.r, this.r);
    t++;
  }
}
float x(float t)
{
  return sin(t/10)*100+cos(t/145)*100;
}
float y(float t)
{
  return cos(t/10)*100; 
}

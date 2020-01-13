class Planet2
{
  float x2;
  float y2;
  float r2;
  float s2;
  float t2;
  void setCoords(float millis, float rOrbit, float rOrbit2) {
    this.x2 = sin(millis * this.s2) * rOrbit/2;
    this.y2 = cos(millis * this.s2) * rOrbit2/2;
  }
  void display() {
    fill(101,27,150);
    strokeWeight(5);
    stroke(0);
    ellipse(this.x2, this.y2, this.r2, this.r2);
    t2++;
  }
}
float x2(float t)
{
  return sin(t/10)*100+cos(t/145)*100;
}
float y2(float t)
{
  return cos(t/10)*100; 
}

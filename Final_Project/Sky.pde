class Sky
{
  float t = 0.1;
  private float a;
  private float b;
  private float m;
  private float n1;
  int BG3;
  int BG4;
  float backgroundColor2;
  Sky()
  {
    a = 3;
    b = 3;
    m = 6;
    n1 = 2;
    BG3 = color(0, 98, 100);
    BG4 = color(89.8, 0, 69.8);
  }
  void SuperFormula()
  {
    colorConstrain = map(mouseX, 0, width, .0, 1);
    color backgroundColor2 = lerpColor(BG2, BG1, colorConstrain);
    color backgroundColor3 = lerpColor(BG3, BG4, colorConstrain);
    fill(backgroundColor3);
    stroke(backgroundColor2);
    strokeWeight(1);
    beginShape();
    for (float theta = 0; theta<=2*PI; theta += 0.001)
    {
      float rad = r(theta, a, b, m, n1, sin(t)*2+0.5, cos(t)*2+0.5);
      float x = rad * cos(theta)*50;
      float y = rad * sin(theta)*50;
      vertex(x, y);
    }
    endShape();
    t+=0.1;
  }
  float r(float theta, float a, float b, float m, float n1, float n2, float n3)
  {
    return pow(pow(abs(cos(m * theta / 4.0) / a), n2) + 
      pow(abs(sin( m *theta / 4.0) / b), n3), - 1 / n1);
  }
}

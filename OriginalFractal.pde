void setup() {
  size(600, 600);
  background(255);
  stroke(0, 100);
  drawFractal(0, 0, width, 6);
}

void drawFractal(float x, float y, float side, int level) {
  if (level > 0) {
    float s = side / 3;
    drawFractal(x, y, s, level - 1);
    drawFractal(x + s, y, s, level - 1);
    drawFractal(x + 2 * s, y, s, level - 1);
    drawFractal(x, y + s, s, level - 1);
    drawFractal(x + 2 * s, y + s, s, level - 1);
    drawFractal(x, y + 2 * s, s, level - 1);
    drawFractal(x + s, y + 2 * s, s, level - 1);
    drawFractal(x + 2 * s, y + 2 * s, s, level - 1);
  } else {
    rect(x, y, side, side);
  }
}

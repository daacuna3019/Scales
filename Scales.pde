void setup() {
  size(800, 800);
  background(0);
  noLoop();
}

void scales(int x, int y) {
  stroke(0);
  strokeWeight(3);
  fill(0);
  rect(x - 50, y - 50, 110, 110, 10);
  fill(150);
  rect(x - 45, y- 45, 100, 95, 20);
  fill(0);
  rect(x - 50, y + 51, 110, 50, 10);
  fill(180, 180, 255);
  rect (x - 25, y + 62, 60, 25, 10);
  fill(255, 0, 0);
  ellipse( x - 35, y + 75, 10, 10);
  fill(0, 0, 255);
  ellipse( x + 45, y + 75, 10, 10);
  noFill();
  stroke(150);
  strokeWeight(2);
  ellipse( x - 35, y + 75, 10, 10);
  ellipse( x + 45, y + 75, 10, 10);
  fill(0);
  textSize(15);
  String scaletext = "0.00";
  text(scaletext, x - 7, y + 5 + 75);
  noFill();
  stroke(200);
  strokeWeight(3);
  System.out.println(mouseX);
  System.out.println(mouseY);
  for (int c = 95; c > 0; c--) {
    stroke(c + 150);
    rect(x - 45 + c/2, y - 45 + c/2, 100 - c, 95 - c, 20);
    stroke(140);
    rect(x - 45, y- 45, 100, 95, 20);
  }
}

void draw() {
  int i = 0;
  for (int y = 900; y > 0; y -= 140) {
    if (i % 2 == 1) {
      for (int x = 900; x > 0; x -= 112) {
        scales(x, y);
      }
    } else if (i % 2 == 0) {
      for (int x = 950; x > 0; x -= 112) {
        scales(x, y);
      }
    }
    i++;
  }
}

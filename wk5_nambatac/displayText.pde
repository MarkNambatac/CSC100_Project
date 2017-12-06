void displayText() {
  textFont(font, 100);
  fill(255, 70);
  if (x_text < 0) {
    text(str, x_text + textWidth(str) + 50, y_text);
  }
  if (x_text <= -textWidth(str)) {
    x_text = x_text+ (int)textWidth(str) + 50;
  }
  text(str, x_text, y_text);
  x_text--;
}
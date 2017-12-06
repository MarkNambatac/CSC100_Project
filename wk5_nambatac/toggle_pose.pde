void toggle_pose() {
  if (mousePressed) {
    if (mouseButton == RIGHT) {
      drawPose2(x, y);
    } else if (mouseButton== LEFT) {
      drawPose3(x, y);
    }
  } else {
    drawPose1(x, y);
  }
}
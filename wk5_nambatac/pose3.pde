void drawPose3(float x, float y) {

  strokeWeight(2);
  fill(#E80202);
  triangle(240 + x, 100+y, 260 + x, 165+y, 220+ x, 165+y);
  //Fxce Shape
  ellipse(240+ x, 100+y, 120, 120);

  //Mask
  fill(#FFBB03);

  beginShape();
  vertex(210+ x, 80+y);
  vertex(270+ x, 80+y);
  vertex(280+ x, 75+y);
  vertex(295+ x, 85+y);
  vertex(280+ x, 120+y);
  vertex(270+ x, 130+y);
  vertex(260+ x, 120+y);
  vertex(220+ x, 120+y);
  vertex(210+ x, 130+y);
  vertex(200+ x, 120+y);
  vertex(185+ x, 85+y);
  vertex(200+ x, 75+y);
  vertex(210+ x, 80+y);
  endShape();


  fill(#E80202);
  beginShape();
  vertex(200+ x, 165+y);
  vertex(280+ x, 165+y);
  vertex(360+ x, 175+y);
  vertex(350+ x, 185+y);
  vertex(275+ x, 185+y);
  vertex(275+ x, 260+y);
  vertex(205+ x, 260+y);
  vertex(205+ x, 185+y);
  vertex(140+ x, 185+y);
  vertex(130+ x, 170+y);
  endShape(CLOSE);

  fill(random(0,255), random(0,255), random(0,255));

  triangle(220+x, 180+y, 260+x, 180+y, 240+x, 200+y);

  //Brief
  fill(#E80202);
  beginShape();
  vertex(205+x, 260+y);
  vertex(205+x, 280+y);
  vertex(240+x, 300+y);
  vertex(275+x, 280+y);
  vertex(275+x, 260+y);
  endShape(CLOSE);

  //Legs
  fill(#FFBB03);
  beginShape();
  vertex(205+x, 280+y);
  vertex(205+x, 330+y);
  vertex(220+x, 330+y);
  vertex(230+x, 340+y);
  vertex(230+x, 295+y);
  endShape(CLOSE);

  fill(#FFBB03);
  beginShape();
  vertex(275+x, 280+y);
  vertex(275+x, 330+y);
  vertex(260+x, 330+y);
  vertex(250+x, 340+y);
  vertex(250+x, 295+y);
  endShape(CLOSE);

  //Shoes
  fill(#E80202);
  beginShape();
  vertex(205+x, 330+y);
  vertex(195+x, 350+y);
  vertex(230+x, 350+y);
  vertex(230+x, 340+y);
  vertex(225+x, 320+y);
  endShape(CLOSE);

  fill(#E80202);
  beginShape();
  vertex(275+x, 330+y);
  vertex(285+x, 350+y);
  vertex(250+x, 350+y);
  vertex(250+x, 340+y);
  vertex(255+x, 320+y);
  endShape(CLOSE);


  //Boosters
  fill(random(0,255), random(0,255), random(0,255));
  triangle(195+x, 350+y, 230+x, 350+y, 212+x, 370+y);
  triangle(250+x, 350+y, 285+x, 350+y, 267+x, 370+y);

  //Belt
  line(205+x, 250+y, 275+x, 250+y);

  fill(255);
  quad(210+x, 90+y, 230+x, 100+y, 220+x, 110+y, 200+x, 100+y);
  quad(250+x, 100+y, 270+x, 90+y, 280+x, 100+y, 265+x, 110+y);
}
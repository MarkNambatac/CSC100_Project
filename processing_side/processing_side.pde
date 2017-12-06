import processing.serial.*; 
 
Serial myPort; 
 
int x;   
int y;   
int b;   
PFont f; 
String portName;
 
void setup()
{
  size(960,640);
  //printArray(Serial.list());
  portName = Serial.list()[0]; 
  myPort = new Serial(this, portName, 9600);
  f = createFont("Arial", 16, true); 
  textFont(f, 16);
}

void draw()
{
  fill(0); 
  clear(); 
  fill(255); 
 
  ellipse(x/2, 512-(y/2), 25, 25);

  //text("AnalogX="+(1023-x)+" AnalogY="+(1023-y),10,20);
}
 

void serialEvent(Serial myPort)
{
  
 
  String input = myPort.readStringUntil(10);

  if (input != null)
  {
  
    int[] vals = int(splitTokens(input, ","));
   
    x = vals[0];
    y = vals[1];
    b = vals[2];   
  }
  
}
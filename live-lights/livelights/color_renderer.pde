class ColorRenderer extends Renderer  {
  int hue;
  int hueMax;
  
  ColorRenderer(PApplet core) {
    hue = 0;
    hueMax = 100;
  }
  
  // TODO: need to supply hue adjustments
  boolean draw() {
    // set the color mode for simple rendering of hue
    colorMode(HSB, hueMax, hueMax, hueMax);
    
    // calculate the hue
    hue += 1;
    if (hue > hueMax) hue = 0;
    
    // draw the box
    fill(hue, hueMax, hueMax);
    rect(0, 0, width, height);
    
    // just return true for now
    // TODO: implemenent error handling
    return true;
  }
  
  void wake_up() {
    println("Color Renderer: Waking Up");
    frameRate(12);
  }
  
  void sleep() {
    println("Color Renderer: Sleeping");
  }
}

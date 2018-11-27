void setup()
{
    size(250, 250); 
    
    colorMode(HSB, 360, 100, 100);
    background(0, 0, 100);
    fill(200, 100, 100);
    noStroke();
}


void draw()
{
    ellipse(mouseX, mouseY, 10, 10);
}



// Called if a key was 
// pressed
void keyPressed()
{
    // Set the fill color to a 
    // randomly chosen one
    fill(random(360), 100, 100);

    if(key == 'c')
    {
        background(0, 0, 100);
    }
}

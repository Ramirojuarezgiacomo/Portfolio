import fisica.*;

FWorld world;
FBody rotatingObject;
float angle = 0;

void setup() {
  size(800, 600);

  Fisica.init(this);
    world = new FWorld();
  // Create the rotating object
  rotatingObject = new FBox(50, 20);
  rotatingObject.setPosition(width / 2, height / 2);
  world.add(rotatingObject);
  
  // Apply a small linear damping to simulate reduced gravity effect
  rotatingObject.setDamping(0.01);
}

void draw() {
  background(255);
  world.step();
  
  // Calculate the new position of the rotating object around a point
  float pivotX = width / 2;
  float pivotY = height / 2;
  float radius = 100;
  float x = pivotX + cos(angle) * radius;
  float y = pivotY + sin(angle) * radius;
  
  // Update the position of the rotating object
  rotatingObject.setPosition(x, y);
  
  // Draw the rotating object
  world.draw();
  
  // Increment the angle for rotation
  angle += radians(1);
}

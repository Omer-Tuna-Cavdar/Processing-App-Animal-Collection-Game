/*
 * Load and Display
 *
 * Images can be loaded and displayed to the screen at their actual size
 * or any other size.
 */

PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
float r1;
float r2;
int animalCode;
int counter=0;
void setup() {
  size(720, 720);
  img1 = loadImage("duck_icon-removebg-preview.png");
  img2 = loadImage("dog_icon-removebg-preview.png");
  img3 = loadImage("fish_icon-removebg-preview.png");
  img4 = loadImage("turtle_icon-removebg-preview.png");
  img5 = loadImage("frog_icon-removebg-preview.png");
  spawnRandomImage(); // Call the function to spawn the initial random image
}

void draw() {
  textSize(24); // Set text size
  fill(0); // Set text color
  text("Points: "+ counter, 10, 20);
}

void spawnRandomImage() {
  background(255); // Clear the background
  r1 = random(0, width);
  r2 = random(0, height);
  animalCode = int(random(1, 6));

  if (animalCode == 1) {
    image(img1, r1, r2, img1.width / 2, img1.height / 2);
  } else if (animalCode == 2) {
    image(img2, r1, r2, img2.width / 2, img2.height / 2);
  } else if (animalCode == 3) {
    image(img3, r1, r2, img3.width / 2, img3.height / 2);
  } else if (animalCode == 4) {
    image(img4, r1, r2, img4.width / 2, img4.height / 2);
  } else if (animalCode == 5) {
    image(img5, r1, r2, img5.width / 2, img5.height / 2);
  }
}

void mousePressed() {
  if (mouseX > r1 && mouseX < r1 + 100 && mouseY > r2 && mouseY < r2 + 100){
  spawnRandomImage(); // Call the function to spawn a new random image on click
  counter++;
  }
}

     
     
     

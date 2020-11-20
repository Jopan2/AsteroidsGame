Spaceship ship;
ArrayList <Asteroid> asteroids = new ArrayList<Asteroid>();
ArrayList <Bullet> bullets = new ArrayList <Bullet>();
ArrayList <Star> stars = new ArrayList <Star>();
boolean[] keys = new boolean[1000];
public void setup() 
{
  //your code here
  ship = new Spaceship();
  for(int i = 0; i < 20; i++) {
    asteroids.add(new Asteroid());
  }
  for(int i = 0; i < 20; i++) {
    asteroids.add(new Asteroid());
  }
  for(int i = 0; i < 30; i++) {
    stars.add(new Star());
  }
  size(1000, 1000);
}
public void draw() 
{
  background(65);
  if(keys[38])
      ship.accelerate(0.7);
    if(keys[40])
      ship.accelerate(-0.7);
    if(keys[37])
      ship.turn(-3);
    if(keys[39])
      ship.turn(3);
    if(keys[88]) {
      ship.setX(Math.random()*1000);
      ship.setY(Math.random()*1000);
    }
  for(Star i: stars) {
    i.show();
  }
  //your code here
  ship.move();
  ship.show();
  for(Asteroid i: asteroids) {
    i.move();
    i.show();
  }
  for(int i = 0; i < bullets.size(); i++) {
    bullets.get(i).move();
    bullets.get(i).show();
    for(int j = 0; j < asteroids.size(); j++) {
      if(dist((float) bullets.get(i).getX(), (float) bullets.get(i).getY(), (float) asteroids.get(j).getX(), (float) asteroids.get(j).getY()) < 25) {
        bullets.remove(i);
        asteroids.remove(j);
        break;
      }
    }
  }

}
public void keyPressed() {
    keys[keyCode] = true;
    if(key == 'c')
        bullets.add(new Bullet(ship));
}
public void keyReleased() {
    keys[keyCode] = false;
}

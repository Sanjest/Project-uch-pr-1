class Resource
{
  int kind; // 0-R, 1-G, 2-B
  int reserve;
  float X, Y, angle;
/////////////////////////////////
  Resource()
  {
    kind = int(random(3000) % 3 );
    reserve = 500;
    X = random(60,width-60);
    Y = random(60,height-60);
    angle = random(TAU);
  }

  public void step()
  { 
    angle += random(-0.1, 0.1);
    if (X<10|| X>width-10 || Y<10 || Y>height-10 ) { angle = angle + PI; }
    X = X + 0.3*sin(angle);  Y = Y + 0.3*cos(angle);
  }
  
  public void render()
  {
    switch(kind){
      case 0: fill(#660000); break;
      case 2: fill(#000066); break;      
    }
    ellipse(X, Y, 20+reserve/20, 20+reserve/20); 
  }
  
  public void minus()
  {
    reserve--;
    if(reserve<=0) {  update(); }
  }
  
  public void update()
  {
      kind = int(random(0,3));
      reserve = 500;
      X = random(60,width-60);
      Y = random(60,height-60);
  }
  
}

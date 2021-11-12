void setup()
{
  size(600,600);
  background(138,152,142);
}
void draw()
{
  background(138,152,142);
  for(int i=40;i<600;i=i+40)
  {
    for(int j=560;j>0;j=j-40)
    {
        fill(i,i,i);
        noStroke();
        rect(i,j,20,20);
        ellipse(j,i,20,20);
       }
     }
}

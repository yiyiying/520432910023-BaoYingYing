int tem, i, j, max;
int []h=new int[6];
int []w=new int[6];
int []s=new int[64];
void setup()
{
  h[5]=600;
  w[5]=600;
  h[0]=0;
  w[0]=0;
  size(600, 600);
  background(255);
  fill(100);
  for (int i=1; i<=4; i++) {
    h[i]=floor(random(0, 600));
    w[i]=floor(random(0, 600));
  }

  for ( i=1; i<=4; i++) {
    tem=h[i];
    for ( j=i; j<=4; j++) {
      if (tem >=h[j]) {
        tem = h[j];
        max=j;
      }
    }
    h[max]=h[i];
    h[i]=tem;
  }
  for ( i=1; i<=4; i++) {
    tem=w[i];
    for ( j=i; j<=4; j++) {
      if (tem >=w[j]) {
        tem = w[j];
        max=j;
      }
    }
    w[max]=w[i];
    w[i]=tem;
  }
  for (i=1; i<=4; i++) {
    strokeWeight(3);
    line(h[i], 0, h[i], 600);
    line(0, w[i], 600, w[i]);
  }

  for (i=0; i<=4; i++) {

    for (j=0; j<=4; j++) {

      s[i*5+j]=(h[i+1]-h[i])*(w[j+1]-w[j]);
    }
  }

  for (i=0; i<=63; i++) {

    if (1500<s[i]&&s[i]<6000) {
      fill( 80 );
      rect( h[i%5], h[(i-i%5)/5], h[i%5+1] - h[i%5], h[(i-i%5)/5+1] -h[(i-i%5)/5] );
    }
  }
}

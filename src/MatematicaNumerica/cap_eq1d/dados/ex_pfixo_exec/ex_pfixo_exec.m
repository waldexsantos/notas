f = @(x) sin(x+pi/4).^2-x.^3+pi/4*x.^2+5*pi^2/16*x+3*pi^3/64;
g = @(x,alpha) x - alpha*f(x); 

alpha=-0.1;

x=2.6
x0=x;
for k=2:5
  x=g(x0,alpha);
  printf("%d %1.4E %1.1E\n",...
          k,x,abs(x-x0))
  x0=x;
endfor
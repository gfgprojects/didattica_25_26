
function fx=systemnl(x)
fx(1) = x(1)^2+x(2)^2-1;
fx(2) = sin(pi*0.5*x(1))+x(2)^3;


x0 = [1 1]; 
alpha=fsolve(@systemnl ,x0);


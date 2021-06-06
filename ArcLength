function L = ArcLength(S, a, b, n)
%%% since the function is quadratic we can easily genaralize dz/dx%%%
%%% we then need to plug the derivative into the arc length equation that
%%% will be used inside the integral%%
x = a;
f= ( 1 +(2 * S(1)* x + S(2))^2)^(1/2);
%%% now we use the trapezoidal rule to find the arc length %%%
h = (b-a)/n;
sum= f;
for i =1: n-1
    x=x+h;
    sum = sum + 2 * (1+ (2*S(1)*x+S(2))^(2))^(1/2);
end
x = b;
sum = sum + (1+ (2*S(1)*x+S(2))^(2))^(1/2);
L = (h/2)*(sum);
end



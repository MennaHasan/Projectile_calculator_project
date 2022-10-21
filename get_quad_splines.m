% we assumer the user provides X vector that has all values of x
% coordinates and Y vector that has all values of y coordinates
function [A,B] = get_quad_splines(X,Y)
n = length(X)-1;
% getting equation 1 = equation of spline 1 at point 1
A = zeros(3*n);
B = zeros(3*n,1);
% the coffecient matrix will be assumed to be [a1 b1 c1 a2 b2 c2 a3 b3 c3]
% the splines will be n splines of the form (y = ai*x^2 + bi*x + ci) 

%this loop aims to assign values for the first 2n equations in the marices A, B
p = 1;
s = 1;
for i = 1:2*n
    %goes through first 2n rows one by one
    b = 2;
    for j = s:s+2
        % this inner loops goes through the columns of the Matrix
        A(i,j) = (X(p))^b;
        b = b-1;
    end
    B(i)= Y(p);
    if mod(i,2)==1
        p = p +1;
    else
        s = s+3;
    end
    
end
%this loop aims to assign values for the next n-1 equations in the marices A, B
z = 1;
knot = 2;
for i = (2*n)+1:(3*n)-1
    A(i,z) = 2*X(knot);
    A(i,z+1) = 1;
    A(i,z+3) = -2*X(knot);
    A(i,z+4) = -1;
    knot = knot +1;
    z = z+3;
end

%this part aims to assign values for the last equation in the marices A, B,
%which can be whatever we want, we chose it to be "a1 =0"
A(3*n,1) =1;

end


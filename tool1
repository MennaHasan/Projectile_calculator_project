% a and b are limits of interval

function L =tool1(x,z)

[A,B] = get_quad_splines(x,z);
C = Gauss_Jordan(A,B);
n = 10;
nsplines=length(C)/3;
L = 0;

for i = 1:nsplines
    S = C((3*i)-2:3*i);
    a = x(i);
    b = x(i+1);
    L = L + ArcLength(S, a, b, n);
end
end

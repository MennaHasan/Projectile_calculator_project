function [Xposition, Zposition]= TrapezoidalInt(vx,vz,T) %function takes vector of vx vx and t values
n=length(vx);%number of  data points
interv=n-1;%calculating number of intervals
hx=(T(n)-T(1))/interv;%get the separation  between t values height
hz=(T(n)-T(1))/interv;
sumx=0;
sumz=0;
%loop to calculate the sum of elements betweeen first and last
for i=2:n-1
    sumx=sumx+vx(i);
    sumz=sumz+vz(i);
end
%calculating the integration from first point to point needed
Xposition=hx/2*(vx(1)+(2*sumx)+ vx(n));
Zposition=hz/2*(vz(1)+(2*sumz)+ vz(n));



%test on these vectors
%T=[0;0.1;0.2;0.3;0.4;0.5;0.6];
%vx=[1.4;1.3;1.14;0.99;0.84;0.78;0.76];
%vz=[1.11;0.91;0.4;0;-0.35;-0.65;-1.02];
%xpos=0.613 analytical
%zpos=0.0355 analytical
end

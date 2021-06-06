function [vx,vz,v,theta] = O_h_powerFour(x,z,t)
n=length(x);
for k=1:n
if k==1
        vx(k)=(-x(k+2)+4*x(k+1)-3*x(k))/(2*t);
        vz(k)=(-z(k+2)+4*z(k+1)-3*z(k))/(2*t);
elseif k==n
        vx(k)=(3*x(k)-4*x(k-1)+x(k-2))/(2*t);
        vz(k)=(3*z(k)-4*z(k-1)+z(k-2))/(2*t);
elseif (k==2||k==n-1)
    vx(k)=(x(k+1)-x(k-1))/(2*t);
    vz(k)=(z(k+1)-z(k-1))/(2*t);
        else
            vx(k)=(-x(k+2)+8*x(k+1)-8*x(k-1)+x(k-2))/(12*t);
            vz(k)=(-z(k+2)+8*z(k+1)-8*z(k-1)+z(k-2))/(12*t);
        end
        v(k)=sqrt((vx(k))^2+(vz(k))^2);
    theta(k)=atan(vz(k)/vx(k))*180/pi;
end
end


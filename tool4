function [t, vx ,vz,v, theta] = tool4(vi,thetai,D,m,chosenmethodDiffEq)


if (chosenmethodDiffEq~=0 && chosenmethodDiffEq ~=4 && chosenmethodDiffEq ~=1)
    chosenmethodDiffEq= error ('invalid');
end

if chosenmethodDiffEq==0 %solve ignoring air resistance
    g = 9.81;
    total_time = 2*vi*sin(thetai)/g;
    dt = 0.1;
    
    t = 0:dt:total_time;
    vx = ones(1,length(t));
    vx(:,:) =vi*cos(thetai); 
    
    vz = -g*t + vi*sin(thetai);
    
    v = sqrt(vx.^2+vz.^2);
    theta = atan(vz./vx)*(180/pi);
end

if chosenmethodDiffEq==4 %using Runge Kutta  4th order
[t, vx ,vz,v, theta] = ODE_RK4(vi,thetai,D,m);

end

if chosenmethodDiffEq==1 %using euler 
[t, vx ,vz,v, theta] = ODE_euler(vi,thetai,D,m);
end
end


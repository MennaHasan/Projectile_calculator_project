function [t,vx,vz,v,theta] = ODE_euler(v0,theta0,D,m)
%theta should be in radians
   
    g = 9.81;
    Af = pi*(D^2)/4; 
    total_time = 1.5*2*v0*sin(theta0)/g; %a factor of 1.5 was added to the equation to account for air resistance
    dt = 0.1;  
    
    t = 0;
    vx = v0*cos(theta0); 
    vz = v0*sin(theta0);
    
    v = v0;
    
    %first interval, to get first value
    for i=dt:dt:total_time
        cD = getCd(v(end),D);
        tmp = vx(end) + f1(t(end),vx(end),vz(end),m,cD,Af)*dt;
        vx= [vx tmp];
        tmp = vz(end) + f2(t(end),vx(end-1),vz(end),m,cD,Af)*dt;
        vz= [vz tmp];
        
        tmp = (vx(end))^2+(vz(end))^2;
        v= [v sqrt(tmp)];
        t = [t i];
    end
    theta = atan(vz./vx)*(180/pi);
end

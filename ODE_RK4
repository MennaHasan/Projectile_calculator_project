function [t,vx,vz,v,theta] = ODE_RK4(v0,theta0,D,m)

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
        Cd = getCd(v(end),D);
        k1x = f1(t(end),vx(end),vz(end),m,Cd,Af);
        k1z = f2(t(end),vx(end),vz(end),m,Cd,Af);
        
        k2x = f1(t(end)+0.5*dt,vx(end)+0.5*k1x*dt , vz(end)+0.5*k1z*dt,m,Cd,Af);
        k2z = f2(t(end)+0.5*dt,vx(end)+0.5*k1x*dt , vz(end)+0.5*k1z*dt,m,Cd,Af);
        
        k3x = f1(t(end)+0.5*dt,vx(end)+0.5*k2x*dt, vz(end)+0.5*k2z*dt,m,Cd,Af);
        k3z = f2(t(end)+0.5*dt,vx(end)+0.5*k2x*dt, vz(end)+0.5*k2z*dt,m,Cd,Af);
        
        k4x = f1(t(end)+dt,vx(end)+k3x*dt, vz(end)+k3z*dt,m,Cd,Af);
        k4z = f2(t(end)+dt,vx(end)+k3x*dt, vz(end)+k3z*dt,m,Cd,Af);
        
        
        tmp = vx(end) + (1/6)*(k1x + 2*k2x + 2*k3x + k4x)*dt;
        vx= [vx tmp];
        tmp = vz(end) + (1/6)*(k1z + 2*k2z + 2*k3z + k4z)*dt;
        vz= [vz tmp];
    
        tmp = (vx(end))^2+(vz(end))^2;
        v= [v sqrt(tmp)];
        t = [t i];
        
    end
        theta = atan(vz./vx)*(180/pi);
end

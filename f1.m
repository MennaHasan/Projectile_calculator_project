function out = f1(t,vx,vz,m,Cd,Af)

    g = 9.81;
    p = 1.204;
    
    v = sqrt(vx^2 + vz^2);
    
    out = (-1/(2*m))*Cd*Af*p*vx*v;
end

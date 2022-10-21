function out = getCd(v,D)

p = 1.204;       %density of air in the atmosphere
u = 1.813*10^-5;       %dynamic viscosity of ain in the atmosphere

Re = p*D*v/u;

if Re <0.2
    Cd = 24/Re;
elseif 0.2<= Re | Re<=2000
    Cd = (21.12/Re)+(6.3/sqrt(Re))+0.25;
end

out = Cd;


end

function [Xposition,Zposition] = SimpsonOneThirdRuleUpdated(vx,vz,T)
n=length(vx);%number of  data points
interv=n-1;%calculating number of intervals
hx=(T(n)-T(1))/interv;%get the separation  between t values height
hz=(T(n)-T(1))/interv;
sumxOdd=0;
sumzOdd=0;
sumxEven=0;
sumzEven=0;
%loop to calculate the sum of odd elements betweeen first and last
if (-1)^n==1   %if number of points is even it means that there is an odd number of intervals so we use simpson for first few then we use trapezoidal for last interval
    for i=2:2:n-2
        sumxOdd=sumxOdd+vx(i);
        sumzOdd=sumzOdd+vz(i);
    end
    
    for i=3:2:n-2 %for the even elements in the normal we have f0 but here f0=f1 so instead of starting from 2 we start from 3
        sumxEven=sumxEven+vx(i);
        sumzEven=sumzEven+vz(i);
    end
    
    if n==4  % the term sumxEven must not include  if n==4
        sumxEven=0;
        sumzEven=0;
    end
    
    if n==2
        XpositionSimp=0;
        ZpositionSimp=0;
    else
        XpositionSimp=(hx/3)*(vx(1)+(4*sumxOdd)+(2*sumxEven)+ vx(n-1));
        ZpositionSimp=(hz/3)*(vz(1)+(4*sumzOdd)+(2*sumzEven)+ vz(n-1));
    end
    %loop to calculate the sum of elements betweeen last 2 points Trapezoidal method
    
    
    %calculating the integration from first point to point needed
    XpositionTrap=((T(n)-T(n-1))/2)*(vx(n-1)+ vx(n));
    ZpositionTrap=((T(n)-T(n-1))/2)*(vz(n-1)+ vz(n));
    
    Xposition=XpositionSimp+XpositionTrap;
    Zposition=ZpositionSimp+ZpositionTrap;
    
    
else % when n is odd which means that the interval is even we only use simpson
    for i=2:2:n-1
        sumxOdd=sumxOdd+vx(i);
        sumzOdd=sumzOdd+vz(i);
    end
    
    for i=3:2:n-2 %for the even elements in the normal we have f0 but here f0=f1 so instead of starting from 2 we start from 3
        sumxEven=sumxEven+vx(i);
        sumzEven=sumzEven+vz(i);
    end
    Xposition=(hx/3)*(vx(1)+(4*sumxOdd)+(2*sumxEven)+ vx(n));
    Zposition=(hz/3)*(vz(1)+(4*sumzOdd)+(2*sumzEven)+ vz(n));
end


%test on these vectors
%T=[0;0.1;0.2;0.3;0.4;0.5;0.6];
%vx=[1.4;1.3;1.14;0.99;0.84;0.78;0.76];
%vz=[1.11;0.91;0.4;0;-0.35;-0.65;-1.02];
%[Xposition,Zposition]=SimpsonOneThirdRuleUpdated(vx,vz,T)



end

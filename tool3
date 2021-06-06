function [x,z,t] = tool3(vx,vz,t,chosenmethodInteg)

%For simpson 1/3 enter "3", for trapezoidal enter "1" ');

if (chosenmethodInteg~=3 && chosenmethodInteg~=1)
    chosenmethodInteg=error ('invalid');
end

if chosenmethodInteg==3 %use simpson 1/3 rule
    n=length(t);
    x(1)=0;
    z(1)=0;
    k=2;
    for i=2:n
          [x(k), z(k)]=SimpsonOneThirdRuleUpdated(vx(1:i),vz(1:i),t(1:i));
          k=k+1;
    end

    %plot(x,z);
    %title('X Position vs Z Position Using Simpson 1/3');
    %xlabel('X position');
    %ylabel('Z position');

end 

if chosenmethodInteg==1  %use trapez rule
    k=2;
    x(1)=0;
    z(1)=0;
    n=length(t);%length of T which is given by user 
    %loop until length of t 
    
    for i=2:n
        [x(k), z(k)]=TrapezoidalInt(vx(1:i),vz(1:i),t(1:i));
         k=k+1;
    end

    %plot(x,z);
    %title('X position vs Z Position Using Trapezoidal');
    %xlabel('X position');
    %ylabel('Z position');
    
end

end

%for testing
%T=[0;0.1;0.2;0.3;0.4;0.5;0.6];
%vx=[1.4;1.3;1.14;0.99;0.84;0.78;0.76];
%vz=[1.11;0.91;0.4;0;-0.35;-0.65;-1.02];


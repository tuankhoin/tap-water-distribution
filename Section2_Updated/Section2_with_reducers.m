%script is used for the calculation of pressure drop on reducer. You can modify it yourself, or tell me if you need any other calculations.
%given values
e=0.0015e-3;  %epsilon
r=998;   %rho
Q=8; 
u=8.9e-4; %mu
D=0.2; %ID
D1=0.14; %if no reducers, just put D1=D
g=9.81; 
dh=10.5;
L=10; %length before reducer
L1=20.15-L; %length after reducer
%calculation for other values
A=0.25.*D.^2.*pi;
A1=0.25.*D1.^2.*pi;
v=Q./A;
v1=Q/A1;
Re=r*v*D/u;
Re1=r*v1*D1/u;

if Re<2000
f=64./Re;
else
    f=1./(-1.8.*log10(6.9./Re+(e./3.7./D).^1.11)).^2;
end

if Re1<2000
f1=64./Re1;
else
    f1=1./(-1.8.*log10(6.9./Re1+(e./3.7./D1).^1.11)).^2;
end

if Re<2500
    K=(1.2+160/Re)*((D./D1).^4-1);
else
    K=(0.6+0.48*f)*(D./D1).^2*((D/D1)^2-1);
end
%before reducer
if Re < 2000
    alpha = 2;
else
  alpha = 1;
end
%after reducer
if Re1 < 2000
    alpha1 = 2;
else
  alpha1 = 1;
end

Ktot=5*0.75 + 1 + 0.4; %fittings before reducer
Ktot1=0.75; %fittings after reducer

p_reducer=0.5*r*v^2*K;
ptap1_before = r.*g.*dh - alpha.*r.*v.^2 - (f.*r.*L.*v.^2)./(2.*D) - 0.5.*Ktot*r.*v.^2;
ptap1_after = r.*g.*dh - alpha1.*r.*v1.^2 - (f1.*r.*L1.*v1.^2)./(2.*D1) - 0.5.*Ktot1*r.*v1.^2;

ptap1=p_reducer+ptap1_before+ptap1_after;
disp("Tap1");
disp(ptap1);
%%
e=0.0015e-3;  %epsilon
r=998;   %rho
Q=8; 
u=8.9e-4; %mu
D=0.2; %ID
D1=0.14; %if no reducers, just put D1=D
g=9.81; 
dh=10.5;
L=10; %length before reducer
L1=20.15-L; %length after reducer
%calculation for other values
A=0.25.*D.^2.*pi;
A1=0.25.*D1.^2.*pi;
v=Q./A;
v1=Q/A1;
Re=r*v*D/u;
Re1=r*v1*D1/u;

if Re<2000
f=64./Re;
else
    f=1./(-1.8.*log10(6.9./Re+(e./3.7./D).^1.11)).^2;
end

if Re1<2000
f1=64./Re1;
else
    f1=1./(-1.8.*log10(6.9./Re1+(e./3.7./D1).^1.11)).^2;
end

if Re<2500
    K=(1.2+160/Re)*((D./D1).^4-1);
else
    K=(0.6+0.48*f)*(D./D1).^2*((D/D1)^2-1);
end
%before reducer
if Re < 2000
    alpha = 2;
else
  alpha = 1;
end
%after reducer
if Re1 < 2000
    alpha1 = 2;
else
  alpha1 = 1;
end

Ktot=5*0.75 + 1 + 0.4; %fittings before reducer
Ktot1=0.75; %fittings after reducer

p_reducer=0.5*r*v^2*K;
ptap1_before = r.*g.*dh - alpha.*r.*v.^2 - (f.*r.*L.*v.^2)./(2.*D) - 0.5.*Ktot*r.*v.^2;
ptap1_after = r.*g.*dh - alpha1.*r.*v1.^2 - (f1.*r.*L1.*v1.^2)./(2.*D1) - 0.5.*Ktot1*r.*v1.^2;

ptap2=p_reducer+ptap1_before+ptap1_after;
disp("Tap2");
disp(ptap2);
%%
e=0.0015e-3;  %epsilon
r=998;   %rho
Q=8; 
u=8.9e-4; %mu
D=0.2; %ID
D1=0.14; %if no reducers, just put D1=D
g=9.81; 
dh=10.5;
L=10; %length before reducer
L1=20.15-L; %length after reducer
%calculation for other values
A=0.25.*D.^2.*pi;
A1=0.25.*D1.^2.*pi;
v=Q./A;
v1=Q/A1;
Re=r*v*D/u;
Re1=r*v1*D1/u;

if Re<2000
f=64./Re;
else
    f=1./(-1.8.*log10(6.9./Re+(e./3.7./D).^1.11)).^2;
end

if Re1<2000
f1=64./Re1;
else
    f1=1./(-1.8.*log10(6.9./Re1+(e./3.7./D1).^1.11)).^2;
end

if Re<2500
    K=(1.2+160/Re)*((D./D1).^4-1);
else
    K=(0.6+0.48*f)*(D./D1).^2*((D/D1)^2-1);
end
%before reducer
if Re < 2000
    alpha = 2;
else
  alpha = 1;
end
%after reducer
if Re1 < 2000
    alpha1 = 2;
else
  alpha1 = 1;
end

Ktot=5*0.75 + 1 + 0.4; %fittings before reducer
Ktot1=0.75; %fittings after reducer

p_reducer=0.5*r*v^2*K;
ptap1_before = r.*g.*dh - alpha.*r.*v.^2 - (f.*r.*L.*v.^2)./(2.*D) - 0.5.*Ktot*r.*v.^2;
ptap1_after = r.*g.*dh - alpha1.*r.*v1.^2 - (f1.*r.*L1.*v1.^2)./(2.*D1) - 0.5.*Ktot1*r.*v1.^2;

ptap3=p_reducer+ptap1_before+ptap1_after;
disp("Tap3");
disp(ptap3);
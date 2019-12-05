%How to use:
%Step1: Run. Don't care about the comments
%Step2: Type p_tap([Q,dh], [ID values], [L values], [K values incl. entrance & exit]) (make sure they are in SI units)
%note: take the values of each pipe section. Section head points are entrance, exit and reducers
function ptap1=p_tap(x,D,L,K_val)
e=0.0015e-3;  %epsilon
r=998;   %rho
g=9.81; 
u=8.9e-4; %mu

Q=x(1); %reading values
dh=x(2);

K=[]; %initial value settings
Kval=[];
p_reducer=0;
ptap=0;

if length(D)==1 %if no reducers
    A=0.25.*D(1).^2.*pi;
    v=Q./A;
    Re=r*v*D(1)/u;

    if Re<2000
    f=64./Re;
    else
        f=1./(-1.8.*log10(6.9./Re+(e./3.7./D(1)).^1.11)).^2;
    end
    
    %alpha
        if Re < 2000
            alpha = 2;
        else
          alpha = 1;
        end
        
    ptap=ptap + r.*g.*dh - alpha.*r.*v.^2 - (f.*r.*L(1).*v.^2)./(2.*D(1)) - 0.5.*K_val(1).*r.*v.^2;
    
else
    for i=1:length(D)-1
    %basic pipe calculations    
    A=0.25.*D(i).^2.*pi;
    A1=0.25.*D(i+1).^2.*pi;
    v=Q./A;
    v1=Q/A1;
    Re=r*v*D(i)/u;
    Re1=r*v1*D(i+1)/u;

    if Re<2000
    f=64./Re;
    else
        f=1./(-1.8.*log10(6.9./Re+(e./3.7./D(i)).^1.11)).^2;
    end

        if Re1<2000
        f1=64./Re1;
        else
            f1=1./(-1.8.*log10(6.9./Re1+(e./3.7./D(i+1)).^1.11)).^2;
        end

        %K val of reducer
        if Re<2500
            K(i)=(1.2+160/Re)*((D(i)./D(i+1)).^4-1);
        else
            K(i)=(0.6+0.48*f)*(D(i)./D(i+1)).^2*((D(i)/D(i+1))^2-1);
        end

        %alpha
        if Re < 2000
            alpha = 2;
        else
          alpha = 1;
        end


        %loop goes from 1 to [# of sections -1]. So I use this way to add the missing opening section
        if i==1
            ptap=r.*g.*dh - alpha.*r.*v.^2 - (f.*r.*L(i).*v.^2)./(2.*D(i)) - 0.5.*K_val(i).*r.*v.^2;
        else
            ptap=ptap;
        end

        %total reducer pressure
        p_reducer = p_reducer + 0.5.*r.*v.^2.*K(i);
        %total pipe pressure
        ptap = ptap + r.*g.*dh - alpha.*r.*v.^2 - (f.*r.*L(i+1).*v.^2)./(2.*D(i+1)) - 0.5.*K_val(i+1).*r.*v.^2;
    end
end
ptap1=p_reducer+ptap;
end

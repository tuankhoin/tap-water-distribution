%This is the script for using the function to calculate tap pressures.
%Reminder: p_tap([Q(m^3/s),dh(m)], [ID values(m)], [L values(m)], [K values incl. entrance & exit])

Q = 9/1000 /60; %Tap flowrate requirement for all taps

%%
%Tap 1 path parameters:

dh = 8.5;

p_tap1 = p_tap([Q,dh],[0.0209],[19.15],[4.75+1+0.75])

%%
%Tap 2 path parameters:

dh = 10.5;
p_tap2 = p_tap([Q,dh],[0.0209,0.0158],[47.25,20],[4.9+1,1+0.75])

%%
%Tap 3 path parameters:
dh = 10.5;

p_tap3 = p_tap([Q,dh],[0.0209,0.0158],[47.25,40],[4.9+1,1.15+0.75])
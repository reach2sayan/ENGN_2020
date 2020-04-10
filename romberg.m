function J4 = romberg(f,a,b,h)
%ROMBERG Summary of this function goes here
%   Detailed explanation goes here
J1 = simpson38_sp20(f,a,b,h);
J2 = simpson38_sp20(f,a,b,2*h);
errh_2 = 1/3*(J2-J1);
J2 = J2+errh_2;
J4 = simpson38_sp20(f,a,b,4*h);
errh_4 = 1/15*(J4-J2);
J4 = J4+errh_4;

end


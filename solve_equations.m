clear
clc

%declare equations symbolic variables
syms I1 I2 I

%my equations
eqn1 = I1 + I2 == I;
eqn2 = -20*exp(-15j *pi/180) + 60*I - 25j*I1 == 0;
eqn3 = -(I1*(-25j)) + 20j*I2 == 0;

%solve
[I1, I2, I] = vpasolve(eqn1, eqn2, eqn3,[I1, I2, I])

%convert to polar
I1_absolute = abs(I1)
I1_phase = angle(I1) * 180/3.14

I2_absolute = abs(I2)
I2_phase = angle(I2) * 180/3.14

I_absolute = abs(I)
I_phase = angle(I) * 180/3.14
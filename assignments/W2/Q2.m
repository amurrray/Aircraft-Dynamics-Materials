clc; close all; clear;


m = 25; % (kg)
x = [-1200, 3075, -1550, ... (m) x, y, z
     0, pi/3, pi/2, ... (rad) phi, theta, psi
     10, -2, 3, ... (m/s) u, v, w 
     0.02, -0.04, 0.05]'; % (rad/sec) p, q, r



pVect = x(1:3,1);

oVect = x(4:6,1);

phi = oVect(1);
theta = oVect(2);
psi = oVect(3);

vVect = x(7:9,1);

wVect = x(10:12,1);


R_EtoB = [cos(theta)*cos(psi), cos(theta)* sin(psi), -sin(theta);
        sin(phi)*sin(theta)*cos(psi) - cos(phi)*sin(psi), sin(phi) * sin(theta) * sin(psi) + cos(phi)*cos(psi), sin(phi)*cos(theta);
        cos(phi)*sin(theta)*cos(psi) + sin(phi)*sin(psi), cos(phi)*sin(theta)*sin(psi) - sin(phi)*cos(psi), cos(phi)*cos(theta)
        ];


v_B = [10; -1; -2];


I_x = 10; % kg-m^2


p_dot_E = 0.5; % rad/s^2




% Solutions:

%  A)
p_dotVect = R_EtoB' * vVect


% B)
w_mag = norm(wVect)


% C)
wind_B = vVect - (R_EtoB)' * v_B


% D)

M_x = I_x * p_dot_E
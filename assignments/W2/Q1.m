clc; close all; clear;

rotationalEffects = [0.4*4 - 0.2 * 1;
          (-0.1)*1 - (0.4)* (11);
          (0.2) * 11 - (-0.1) * 4];

gravForce = (9.81) * [ -sin(-pi/6);
                    cos(-pi/6) * sin(0);
                    cos(-pi/6) * cos(0)
                   ];

v_rel = [11; 4; 1] - [2; 2; 0];



f_d = -(10^(-2)) * norm(v_rel) * [11; 4; 1];

dragForce = (1/10) * f_d;

controlForce = (1/10) * [0;
                   0;
                   (-30)*(4)];



v = rotationalEffects + gravForce + dragForce + controlForce;
%% Programming Homework 1 - (Aidan Murray)
clear; close all; clc;



%% Task 5
u = [2.3];
[tout, xout] = ode45(@(t,x) monospinnerDynamics(t, x, u), [0 5], zeros(12, 1));

monospinnerAnimation(tout, xout);

plotStateHistory(tout, xout);

% Answer to Task 5:
% Initially, the angular rate q grows the fastest. This is becuase
% when the mono spinner starts up the thrust from the prop immediatly
% causes the aircraft to increase in pitch.



%% Task 6

u = [0.0];
X0 = [0; 0; 0;   % Position
      0; 0; 0;   % Orientation
      1; 1; -20; % Velocity
      0; -5; 0]; % Angular Rate

[tout, xout] = ode45(@(t,x) monospinnerDynamics(t, x, u), [0 2], X0);

plotStateHistory(tout, xout);

% Answer to Task 6:
% The term w oscillates because the monocopter is rotating as it is thrown
% upwards as well as as it comes back down. Since it starts with a negative
% angular rate through q, it puts the mono spinner into a spiral for the
% duration of the 'flight'. If we set the intial q to 0 we can see that 
% all angular rates are constant at 0.


%% Task 7
%
% Answer to Task 7:
% In real life the monospinner relies on drag for steady flight. Drag
% affects the aerodynamic forces in our equation for change in velocity.
% Even more critically, there is a grad moment that acts on the aircraft
% that ensures rotational stability. Both of these are fundamentally
% required to insure reliable flights.

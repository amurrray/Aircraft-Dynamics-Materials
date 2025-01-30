function R = rotation321(phiThetaPsi)
% ROTATION321 Creates a rotation matrix from Euler angles for a 3-2-1 rotation sequence.
% Inputs:
%   phiThetaPsi = 3x1 vector of Euler angles [phi; theta; psi] (rad)
% Outputs:
%   R = 3x3 direction cosine matrix

phi = phiThetaPsi(1);
theta = phiThetaPsi(2);
psi = phiThetaPsi(3);

% rotation matrix for earth -> body
R = [cos(theta) * cos(psi), cos(theta) * sin(psi), -sin(theta);
     (sin(phi) * sin(theta) * cos(psi)) - (cos(phi) * sin(psi)), (sin(phi) * sin(theta) * sin(psi)) + (cos(phi) * cos(psi)), sin(phi) * cos(theta);
    (cos(phi)*sin(theta)*cos(psi))+(sin(phi)*sin(psi)), (cos(phi)*sin(theta)*sin(psi))-(sin(phi)*cos(psi)), cos(phi)*cos(theta)];

end

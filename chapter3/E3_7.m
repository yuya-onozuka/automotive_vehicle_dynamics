% Vehicle parameters
m = 1500;    % mass (kg)
I = 2500;    % moment of inertia about z-axis:I (kgm^2)
lf = 1.1;    % distance from C.O.G to front axle (m)
lr = 1.6;    % distance from C.O.G to rear axle (m)
l = lf + lr; % wheel base (m)
Kf = 55000;  % front cornering stiffness (N/rad)
Kr = 60000;  % rear cornering stiffness (N/rad)

% Simulation parameters
dt = 0.001;  % simulation rate (s)
tf = 4.0;    % simulation time (s)
V = 100/3.6; % velocity (m/s) 
Sf = 0.04;   % front tire steer angle (rad)
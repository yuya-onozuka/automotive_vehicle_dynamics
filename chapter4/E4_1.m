% Vehicle parameters
m = 1500;    % mass (kg)
I = 2500;    % moment of inertia about z-axis:I (kgm^2)
lf = 1.1;    % distance from C.O.G to front axle (m)
lr = 1.6;    % distance from C.O.G to rear axle (m)
l = lf + lr; % wheel base (m)
%US
Kf = 55000;  % front cornering stiffness (N/rad)
Kr = 60000;  % rear cornering stiffness (N/rad)
%NS
%Kf = 68150;  % front cornering stiffness (N/rad)
%Kr = 46850;  % rear cornering stiffness (N/rad)
%OS
%Kf = 72500;  % front cornering stiffness (N/rad)
%Kr = 42500;  % rear cornering stiffness (N/rad)

% Simulation parameters
dt = 0.001;  % simulation rate (s)
tf = 4.0;    % simulation time (s)
V = 80/3.6;  % velocity (m/s) 
Sf = 0.0;    % front tire steer angle (rad)
Y0 = 4000;   % side wind (N)
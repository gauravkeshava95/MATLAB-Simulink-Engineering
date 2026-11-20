
%% SINGLE TANK SYSTEM - SIMULATION
% MATLAB and Simulink Engineering Portfolio
% Model: Single_Tank_Model.slx

clc;

% 1. Define tank parameters
A = 1;       % Tank cross-sectional area (m^2)
c = 0.5;     % Outlet flow coefficient
h0 = 0.25;   % Initial water level (m)

% 2. Set simulation duration
modelName = 'Single_Tank_Model';

% 3. Load the Simulink model
load_system(modelName);

% 4. Set simulation time
set_param(modelName, 'StopTime', '50');

% 5. Run simulation
out = sim(modelName);

% 6. Calculate theoretical steady-state level
h_ss = (1/c)^2;

fprintf('\nSimulation completed successfully!\n');
fprintf('Tank area: %.2f m^2\n', A);
fprintf('Outlet coefficient: %.2f\n', c);
fprintf('Initial water level: %.2f m\n', h0);
fprintf('Expected steady-state level: %.2f m\n', h_ss);

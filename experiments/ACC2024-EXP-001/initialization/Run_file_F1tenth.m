%% To start the ROS master using Windows Subsystem for Linux
% 1. Open the terminal as administrator
% 2. In an Ubuntu 20.04 tab, start 'roscore'
% 3. In a powershell terminal, run the following:
%   * 'netsh interface portproxy add v4tov4 listenport=11311
%   listenaddress=0.0.0.0 connectport=11311 connectaddress=(wsl hostname -I)' 
%   * or if that doesn't work then manually specify the addresses
%   * netsh interface portproxy add v4tov4 listenport=11311 listenaddress=192.168.2.151 connectport=11311 connectaddress=172.23.232.188
% 4. In MATLAB, run the following: 'rosinit('http://<windows_ip_address>:11311/')'
 
%%
% This script is for N noelbots (DDWMR vehicle paltoon)...
...simulink model and hardware robot run file

% Run_this_file_for_N_nolebots_vehicle_following

clear all
close all
clc

% % % % %% master ip address for connection
% rosshutdown
% rosinit('http://192.168.2.151:11311')
% rosinit

% Actuation limits
MAX_STEER = 0.4;  % 0.4 rads
MIN_STEER = -MAX_STEER;  % rads

MAX_SPEED = 3.0;  % rads
MIN_SPEED = -MAX_SPEED;  % rads

wheelbase = 0.256; % m

%% parameter for robot model
r  = 0.05;                       % wheel's radium (m)
mc = 10;                         % robot platform's weight (kg)
mw = 2.5;                        % Wheel's weight (kg)
m  = mc+2*mw;                    % total weight (kg)
L  = 0.235/2;                    % half of distance between two wheels (m)
d  = 0.0562;                     %perfect value after parameter estimation   % distance betwen medium point of axis of wheels and center of mass(m)  
Ic = 0.05;                       % inertia of robot about vertical axis (kg.m^2)
Iw = 0.025;                      % inertia of wheel about wheel axis (kg.m^2)
Im = 0.025;                      % inertia of wheel about wheel diameter (kg.m^2)
I  = Ic +mc*d^2+2*mw*L^2+2*Im;   % inertia of whole robot (kg.m^2)

%% adaptive parameters

delay = 10; % no delay case
% delay = 0; % delay
b = 8;       % impedence for wavevariable

%% Vehicle following paramerters

% Controller parameters
h = 0.5;
% h = 0.7;   % robot headway
tau = 0.1; % time constant 

% mobile robot gain values
% kp = 0.2;   % proportional gain
kp = 0.2;   % proportional gain
kd1 = 0.7;  % differrntial gain
% kp = 0.05;   % proportional gain
% kd1 = 0.01;  % differrntial gain
kd2 = 0;
vehicle_length_1 = 0.35;    % robot length
stand_still_1 = 0.4;       % stand still distance 

% % gains to regulate y direction drift
% kx = 1;
% ky = 1;
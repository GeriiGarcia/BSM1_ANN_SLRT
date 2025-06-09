close all;
clear all;
warning off;
%% Definition of lab parameters

% Parameters of the no lineal system
A = 10;
As = 1;
g = 9.8;
Q = 2;
k = As*sqrt(2*g);

IncH2=0.2;
IncQ=2;
% Definition of the operational point

x0_ini=[2*(Q/k)^2  (Q/k)^2];

K = 0.2294;
T = 6.5201;
L = 0.4563;

% PID tuning Ziegler-Nichols
Kc_filter=32.3841;
Ti_filter=1.0264;
Td_filter=0.2776;
beta_ctrl=0.3331;
alpha = 0.1;

init_PI_ann_lab

mean_scaler_dir = [(Q/k)^2, 1.9756, 0.0000, 0]';
std_scaler_dir = [1, 0.7579, 0.05, 1]';

mean_scaler_dir_out = 0;
std_scaler_dir_out = 1;

%% Simulink parameters.
t_simulink = 0;
f_s = 96;
t_signal = 1680;
% t_pulse = 16/96;
t_pulse = 1;
max_variation = 0.5; % maximum So5 = 6
min_variation = -0.5; % minimum kla = 0

%% BSM1 KLa
So_mean = 0.2;
max_SO5 = 5;

So_ref_prev = signal_generator_function(f_s, t_signal, 8, So_mean, max_variation, min_variation);
So_ref = filter_input_So5(So_ref_prev, t_pulse);
So_ref(So_ref(:,2)<-So_mean,2) = -So_mean;
So_ref(So_ref(:,2)>max_SO5-So_mean,2) = max_SO5-So_mean;
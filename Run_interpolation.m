

%% Run BSM1
clc
clear all
close all

%% Steady State
benchmarkinit;
sim('benchmarkss');
disp('Running Benchmark....')
sim('benchmark');
disp('.... End')
init_PI_ann_hier;

%% Crear variables para el Performance Plot 

BSS=2;
BBOD5=2;
BNKj_new = 30; % updated BSM TG meeting no 8
BNO_new = 10; % updated BSM TG meeting no 8


%% Run BSM_1 Interpolated DRYINFLUENT

upscale_dryinfluent; % generate interpolated data
load('dryinfluent_expanded.mat', 'expanded')
SampleTime = 0.0001;


%%
TiQintr = 0.025*15*1.5; %reginit
TiSO5 = 0.002*15*1.5; %reginit.m    %I-part time constant (d = 2.88 min)), integral time constant, 0.001 in BSM1 book





set_param('benchmark_ivan_PIANN_interpolated_slrt', 'FixedStep', '0.0001') 
% set_param('benchmark_ivan_PIANN_Performance_plot_disc', 'FixedStep', '0.0001') 

% Define target si no existe
tg = slrealtime('TargetPC1');
% tg.ptpd

% Establece dirección IP
setpref('SimulinkRealTime', 'TargetPC1_IPAddress', '192.168.7.2');

% Conectar al target
connect(tg);

% 
rtwbuild('benchmark_ivan_PIANN_interpolated_slrt')                 % compilar para Speedgoat
load(tg, 'benchmark_ivan_PIANN_interpolated_slrt');

% rtwbuild('benchmark_ivan_PIANN_Performance_plot_disc') 
% load(tg, 'benchmark_ivan_PIANN_Performance_plot_disc');
start(tg);



%% Run BSM1_PP
% 
% SampleTime = 0.0001;
% set_param('benchmark_PP', 'FixedStep', '0.0001')  % 10 ms
% 
% % Define target si no existe
% tg = slrealtime('TargetPC1');
% % tg.ptpd
% 
% % Establece dirección IP
% setpref('SimulinkRealTime', 'TargetPC1_IPAddress', '192.168.7.2');
% 
% % Conectar al target
% connect(tg);
% 
% % 
% rtwbuild('benchmark_PP')                 % compilar para Speedgoat
% load(tg, 'benchmark_PP');
% start(tg);
% 


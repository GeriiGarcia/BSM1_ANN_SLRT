
%% Run BSM1
clc
clear all
close all

benchmarkinit;
sim('benchmarkss');
disp('Running Benchmark....')
sim('benchmark');
disp('.... End')
init_PI_ann_hier;

SampleTime = 0.0001;
BSS=2;
BBOD5=2;
BNKj_new = 30; % updated BSM TG meeting no 8
BNO_new = 10; % updated BSM TG meeting no 8


sim("benchmark_ivan_PIANN.mdl")

%%

SampleTime = 0.0001;
set_param('benchmark_ivan_PIANN_Performance_plot', 'FixedStep', '0.0001')  % 10 ms

% Define target si no existe
tg = slrealtime('TargetPC1');
% tg.ptpd




% Establece dirección IP
setpref('SimulinkRealTime', 'TargetPC1_IPAddress', '192.168.7.2');

% Conectar al target
connect(tg);



% 
rtwbuild('benchmark_ivan_PIANN_Performance_plot')                 % compilar para Speedgoat
load(tg, 'benchmark_ivan_PIANN_Performance_plot');
start(tg);



%% Run BSM1
clc
clear all
close all

%% Load variables
data_in = []; 
time_vect = [];

%% Steady State

benchmarkinit;
sim('benchmarkss');

sim('benchmark');

%% Parameters of the variations
tf = 14;
t_zero_order = -1;

%% Simulink parameters
t_simulink = -1;
f_s = 96;
% t_signal = 14;
% t_pulse = 4/96;
% t_init = 7e-3;
% max_variation = 1; % maximum Kla = 6
% min_variation = -1; % minimum kla = 0
SO5ref = 2;

%% Filter Specifications

useideal_KLa5 = 1;

useideal_SO5 = 1;
usenoise_SO5 = 0;

useideal_SNH4 = 1;
usenoise_SNH4 = 0;

useideal_SNO2 = 1;
usenoise_SNO2 = 0;

useideal_SNO4 = 1;
usenoise_SNO4 = 0;

useideal_SO4 = 1;
usenoise_SO4 = 0;

useideal_TSS4 = 1;
usenoise_TSS4 = 0;

useideal_TSSin = 1;
usenoise_TSSin = 0;

useideal_Q4 = 1;
usenoise_Q4 = 0;

useideal_SNH5 = 1;
usenoise_SNH5 = 0;

useideal_SNO5 = 1;
usenoise_SNO5 = 0;

useideal_TSS5 = 1;
usenoise_TSS5 = 0;

useideal_Q5 = 1;
usenoise_Q5 = 0;


% sim('benchmark_ivan_PI', tf);
%perf_plant_v3;

% benchmarkinit;
% sim('benchmarkss');

%init_PI_ann_hier_v2;
init_PI_ann_hier;




BSS=2;
BCOD=1;
BNKj=20; % original BSM1
BNO=20; % original BSM1
BBOD5=2;
BNKj_new = 30; % updated BSM TG meeting no 8
BNO_new = 10; % updated BSM TG meeting no 8
sim('benchmark_ivan_PIANN', tf);





% ic_sw_So4 = sw_So4(end,:)';
% ic_sw_Sno4 = sw_Sno4(end,:)';
% ic_sw_Snh4 = sw_Snh4(end,:)';
% ic_sw_So5 = sw_So5(end,:)';
% ic_sw_Kla = sw_Kla(end,:)';

% sim('benchmark_ivan_PIANN', tf);
% perf_plant_v3;
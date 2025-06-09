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

%% Parameters of the variations
n_months = 12*5;
tf = n_months*2*14;

%% Simulink parameters
t_simulink = 1/96;
f_s = 96;
t_signal = 336;
t_pulse = 16/96;
t_init = 7e-3;
max_variation = 0.6; % maximum Kla = 240
min_variation = -0.85; % minimum kla = 0

%% Filter Specifications

K_f = 1;
T_f = 1/864;

%% BSM1 KLa
kla_mean = 144;
So_ref = 2;

kla_variations = signal_generator_function(f_s, t_signal, t_pulse, kla_mean, max_variation, min_variation);
kla_variations = filter_input_So5(kla_variations, t_pulse);
kla_variations(kla_variations(:,2)<-kla_mean,2) = -kla_mean;
kla_variations(kla_variations(:,2)>240-kla_mean,2) = 240-kla_mean;

% init_imc_ann;
init_PI_ann_hier;

DRYINFLUENT = generate_BSM1_influent(DRYINFLUENT, RAININFLUENT, STORMINFLUENT, n_months);

NOISEDATA_SNH4 = generate_BSM1_noise(NOISEDATA_SNH4, n_months);
NOISEDATA_SNO2 = generate_BSM1_noise(NOISEDATA_SNO2, n_months);
NOISEDATA_SNO4 = generate_BSM1_noise(NOISEDATA_SNO4, n_months);
NOISEDATA_SO4 = generate_BSM1_noise(NOISEDATA_SO4, n_months);
NOISEDATA_SO5 = generate_BSM1_noise(NOISEDATA_SO5, n_months);


useideal_KLa5 = 0;

useideal_SO5 = 0;
usenoise_SO5 = 1;

useideal_SNH4 = 0;
usenoise_SNH4 = 1;

useideal_SNO4 = 0;
usenoise_SNO4 = 1;

useideal_SO4 = 0;
usenoise_SO4 = 1;

init_imc_ann_noise;

sim('benchmark_ivan_kla_noise', tf);

% tf = 15;
  
% InputData = [(0:1/96:336)' reactor_5_in];
% OutputData = [(0:1/96:336)' reactor_5_out];
  
% sim('./IMC/ann_serie_2.slx', tf);












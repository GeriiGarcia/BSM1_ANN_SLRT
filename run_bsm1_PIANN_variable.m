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
tf = 30;
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

useideal_SNO4 = 1;
usenoise_SNO4 = 0;

useideal_SNO2 = 1;
usenoise_SNO2 = 0;

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

%benchmarkinit;
%sim('benchmarkss');

%% Simulink parameters

t_simulink = 0;
f_s = 96;
t_signal = 1680;
% t_pulse = 16/96;
t_pulse = 1;
t_init = 5e-2;
max_variation = 0.75; % maximum So5 = 6
min_variation = -0.75; % minimum kla = 0

%% Filter Specifications

K_f = 1;
T_f = 1/864;

%% BSM1 KLa
So_mean = 2;

So_ref_prev = signal_generator_function(f_s, t_signal, 192/96, So_mean, max_variation, min_variation);
So_ref = filter_input_So5(So_ref_prev, t_pulse);
So_ref(So_ref(:,2)<-So_mean,2) = -So_mean;
So_ref(So_ref(:,2)>max_SO5-So_mean,2) = max_SO5-So_mean;

Sno_mean = 1;

Sno_ref_prev = signal_generator_function(f_s, t_signal, 48/96, Sno_mean, max_variation, min_variation);
Sno_ref = filter_input_So5(Sno_ref_prev, t_pulse);
Sno_ref(Sno_ref(:,2)<-Sno_mean,2) = -Sno_mean+0.05;
Sno_ref(Sno_ref(:,2)>max_SNO2-Sno_mean,2) = max_SNO2-Sno_mean;

Freq=30;
FreqTSSin=10;
t_delay=10/(24*60);

% Fuzzy_hierarchical;

% sim('benchmark_ivan_PI_variable', tf); %needs fuzzy logic
% perf_plant_v3;


 set_param('benchmark_ivan_PIANN', 'SystemTargetFile', 'speedgoat.tlc')


try
    targets = slrealtime.list;
    disp(targets)
    
    tg = slrealtime('TargetPC1');
    connect(tg);

    if strcmp(tg.Connected, 'Yes')
        disp('✅ Modelo preparado para ejecutar en Speedgoat.');
    else
        disp('❌ No conectado al Speedgoat. Ejecutando localmente.');
    end
catch
    disp('❌ Speedgoat no disponible o no configurado.');
end






init_PI_ann_hier_v2;

sim('benchmark_ivan_PIANN', tf);

% ic_sw_So4 = sw_So4(end,:)';
% ic_sw_Sno4 = sw_Sno4(end,:)';
% ic_sw_Snh4 = sw_Snh4(end,:)';
% ic_sw_So5 = sw_So5(end,:)';
% ic_sw_Kla = sw_Kla(end,:)';

% sim('benchmark_ivan_PIANN', tf);
% perf_plant_v3;
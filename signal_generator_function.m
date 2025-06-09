function [ input_signal ] = signal_generator_function(f_s, t_signal,...
    t_pulse, signal_mean, max_variation, min_variation)
%signal_generation_function Generates a square random pulse random input
%   Function that generates a train of square pulses whose amplitudes are
%   in the range of mean - min_variation and mean + max_variation
% Inputs:
%   f_s             --> Sampling frequency
%   t_signal        --> Signal duration in seconds
%   t_pulse         --> Pulse duration in seconds
%   signal_mean     --> Mean of the signal
%   max_variation   --> Maximum variation of the signal
%   min_variation   --> Minimum variation of the signal
% Outputs:
%   input_signal    --> Input signal with 1 second without variations
%                   --> First Column equals to the time
%                   --> Second Column equals to the amplitude

%% Generate signal

num_pulses = floor(t_signal/t_pulse);

variations = min_variation + ...
    (max_variation-min_variation).*rand(num_pulses,1);

variations_round = signal_mean.*round(variations,2);

signal_variation = signal_mean + variations_round;

num_samples = f_s*t_pulse;

input_variations = kron(variations_round, ones(num_samples,1));

% input_signal_amp = [input_guard; input_variations];

time_signal = 0:1/96:t_signal;
% time_signal = [time_signal(1:end-1) t_signal:1/f_s:t_signal+1];

input_signal = [time_signal(1:end-1)' input_variations];
end


function [ noise_aux ] = generate_BSM1_noise( noise, n_months)
%generate_BSM1_influent Function to create a random influent 
%   Input:
%   DRYINFLUENT, RAININFLUENT, STORMINFLUENT
%   n_months --> Number of months considered to generate the influent
%   Output:
%   DRYINFLUENT --> Updated DRYINFLUENT

n_weeks = n_months*2;
noise_aux = repmat(noise(1:end-1,:), [n_weeks, 1]);
noise_aux = [noise_aux; noise_aux(end,:)];

days_vect = 0:1/1440:(n_weeks)*14;

noise_aux(:,1) = days_vect;

end


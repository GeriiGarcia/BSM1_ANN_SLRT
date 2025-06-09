function [ dryinfluents_aux ] = generate_BSM1_influent( f_s, DRYINFLUENT, RAININFLUENT, STORMINFLUENT, n_months)
%generate_BSM1_influent Function to create a random influent 
%   Input:
%   DRYINFLUENT, RAININFLUENT, STORMINFLUENT
%   n_months --> Number of months considered to generate the influent
%   Output:
%   DRYINFLUENT --> Updated DRYINFLUENT

n_weeks = n_months*2;
dryinfluents_aux = [];

random_weeks = randi(3, 1, n_weeks);

for i = 1:length(random_weeks)
    
    if random_weeks(i)==1
        
        dryinfluents_aux = [dryinfluents_aux; DRYINFLUENT];
        
    elseif random_weeks(i)==2
        
        dryinfluents_aux = [dryinfluents_aux; RAININFLUENT];
        
    else
        
        dryinfluents_aux = [dryinfluents_aux; STORMINFLUENT];

    end
end

days_vect = 0:1/f_s:n_weeks*14;

dryinfluents_aux(:,1) = days_vect(1:end-1);

end


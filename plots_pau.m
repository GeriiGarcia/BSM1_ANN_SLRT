% after executing run_bsm1_PIANN_variable

time = t_sim;
% Plotting the signals together
figure;
plot(time, SO5ref, 'r', 'LineWidth', 1.5); hold on;
plot(time, So5_out, 'b', 'LineWidth', 1.5);
%plot(time, Kla_ANN, 'g', 'LineWidth', 1.5);

% Adding labels and title
xlabel('Time (s)');
ylabel('Signal Amplitude');
title('SO5ref, So5_out, and Kla_ANN Signals');

% Adding a legend to distinguish the signals
legend('SO5ref', 'So5_out', 'Kla_ANN');

% Grid for better visualization
grid on;


%startindex=2, stopindex=674 amb SLRT, 7 to 14 times
%startindex=2, stopindex=674 fora SLRT, 7 to 14 times

%%

% Adjust t to start from 0
adjusted_t = t - t(1);

% Cut the time signal to only keep values less than or equal to 14 seconds
adjusted_t = adjusted_t(adjusted_t <= 14);

% Assuming the corresponding signal is called `signal`, cut it similarly
adjusted_signal = t(1:length(adjusted_t));

% Now, 'adjusted_t' starts from 0 and is capped at 14 seconds
% 'adjusted_signal' is aligned with this time window.


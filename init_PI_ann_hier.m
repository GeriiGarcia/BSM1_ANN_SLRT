%% IMC - ANN
%% Weights & biases ANN

% w1 = csvread('./DAE_ANN/ANN/Weights/22_07_20/weights_mlp_imc_bsm1_vdir_ideal_mlp_1__100_50_W_2.csv');
% b1 = csvread('./DAE_ANN/ANN/Biases/22_07_20/weights_mlp_imc_bsm1_vdir_ideal_mlp_1__100_50_b_2.csv')';
% w2 = csvread('./DAE_ANN/ANN/Weights/22_07_20/weights_mlp_imc_bsm1_vdir_ideal_mlp_2__100_50_W_2.csv');
% b2 = csvread('./DAE_ANN/ANN/Biases/22_07_20/weights_mlp_imc_bsm1_vdir_ideal_mlp_2__100_50_b_2.csv')';
% w3 = csvread('./DAE_ANN/ANN/Weights/22_07_20/weights_mlp_imc_bsm1_vdir_ideal_mlp_3__100_50_W_2.csv');
% b3 = csvread('./DAE_ANN/ANN/Biases/22_07_20/weights_mlp_imc_bsm1_vdir_ideal_mlp_3__100_50_b_2.csv')';
% w_out = csvread('./DAE_ANN/ANN/Weights/22_07_20/weights_mlp_imc_bsm1_vdir_ideal_final__100_50_W_2.csv');
% b_out = csvread('./DAE_ANN/ANN/Biases/22_07_20/weights_mlp_imc_bsm1_vdir_ideal_final__100_50_b_2.csv')';
% 
% mean_scaler_dir = csvread('./DAE_ANN/ANN/Scalers/22_07_20/mean_scaler_mlp_imc_bsm1_vdir_ideal.csv');
% std_scaler_dir = csvread('./DAE_ANN/ANN/Scalers/22_07_20/std_scaler_mlp_imc_bsm1_vdir_ideal.csv');
% mean_scaler_dir_out = csvread('./DAE_ANN/ANN/Scalers/22_07_20/mean_scaler_mlp_imc_bsm1_vdir_ideal_out.csv');
% std_scaler_dir_out = csvread('./DAE_ANN/ANN/Scalers/22_07_20/std_scaler_mlp_imc_bsm1_vdir_ideal_out.csv');

% Weights Direct LSTM
w1 = csvread('./DAE_ANN/ANN/Weights/12_05_21/lstm_ann_pi_standard_fix_noSo4_rnn_1__100_1_W_2.csv');
u1 = csvread('./DAE_ANN/ANN/Weights/12_05_21/lstm_ann_pi_standard_fix_noSo4_rnn_1__100_1_U_2.csv');
b1 = csvread('./DAE_ANN/ANN/Biases/12_05_21/lstm_ann_pi_standard_fix_noSo4_rnn_1__100_1_b_2.csv');
w2 = csvread('./DAE_ANN/ANN/Weights/12_05_21/lstm_ann_pi_standard_fix_noSo4_rnn_2__100_1_W_2.csv');
u2 = csvread('./DAE_ANN/ANN/Weights/12_05_21/lstm_ann_pi_standard_fix_noSo4_rnn_2__100_1_U_2.csv');
b2 = csvread('./DAE_ANN/ANN/Biases/12_05_21/lstm_ann_pi_standard_fix_noSo4_rnn_2__100_1_b_2.csv');
w_last = csvread('./DAE_ANN/ANN/Weights/12_05_21/lstm_ann_pi_standard_fix_noSo4_last__100_1_W_2.csv');
b_last = csvread('./DAE_ANN/ANN/Biases/12_05_21/lstm_ann_pi_standard_fix_noSo4_last__100_1_b_2.csv')';
w_out = csvread('./DAE_ANN/ANN/Weights/12_05_21/lstm_ann_pi_standard_fix_noSo4_final__100_1_W_2.csv');
b_out = csvread('./DAE_ANN/ANN/Biases/12_05_21/lstm_ann_pi_standard_fix_noSo4_final__100_1_b_2.csv');

w_last_1_Sno2 = csvread('./DAE_ANN/ANN/Weights/12_05_21/lstm_TL_Sno2_ann_pi_standard_last_1__100_1_W_2.csv');
b_last_1_Sno2 = csvread('./DAE_ANN/ANN/Biases/12_05_21/lstm_TL_Sno2_ann_pi_standard_last_1__100_1_b_2.csv')';

w_last_2_Sno2 = csvread('./DAE_ANN/ANN/Weights/12_05_21/lstm_TL_Sno2_ann_pi_standard_last_2__100_1_W_2.csv');
b_last_2_Sno2 = csvread('./DAE_ANN/ANN/Biases/12_05_21/lstm_TL_Sno2_ann_pi_standard_last_2__100_1_b_2.csv')';

w_out_Sno2 = csvread('./DAE_ANN/ANN/Weights/12_05_21/lstm_TL_Sno2_ann_pi_standard_final__100_1_W_2.csv');
b_out_Sno2 = csvread('./DAE_ANN/ANN/Biases/12_05_21/lstm_TL_Sno2_ann_pi_standard_final__100_1_b_2.csv');

% % Weights Direct LSTM
% w1_Sno2 = csvread('./DAE_ANN/ANN/Weights/27_10_21/lstm_ann_pi_standard_Sno2_rnn_1__100_1_W_3.csv');
% u1_Sno2 = csvread('./DAE_ANN/ANN/Weights/27_10_21/lstm_ann_pi_standard_Sno2_rnn_1__100_1_U_3.csv');
% b1_Sno2 = csvread('./DAE_ANN/ANN/Biases/27_10_21/lstm_ann_pi_standard_Sno2_rnn_1__100_1_b_3.csv');
% w2_Sno2 = csvread('./DAE_ANN/ANN/Weights/27_10_21/lstm_ann_pi_standard_Sno2_rnn_2__100_1_W_3.csv');
% u2_Sno2 = csvread('./DAE_ANN/ANN/Weights/27_10_21/lstm_ann_pi_standard_Sno2_rnn_2__100_1_U_3.csv');
% b2_Sno2 = csvread('./DAE_ANN/ANN/Biases/27_10_21/lstm_ann_pi_standard_Sno2_rnn_2__100_1_b_3.csv');
% w_last_Sno2 = csvread('./DAE_ANN/ANN/Weights/27_10_21/lstm_ann_pi_standard_Sno2_last__100_1_W_3.csv');
% b_last_Sno2 = csvread('./DAE_ANN/ANN/Biases/27_10_21/lstm_ann_pi_standard_Sno2_last__100_1_b_3.csv')';
% w_out_Sno2 = csvread('./DAE_ANN/ANN/Weights/27_10_21/lstm_ann_pi_standard_Sno2_final__100_1_W_3.csv');
% b_out_Sno2 = csvread('./DAE_ANN/ANN/Biases/27_10_21/lstm_ann_pi_standard_Sno2_final__100_1_b_3.csv');
%% Scalers

n_layers = 1;
n_layers_inverse = 1;
n_sw = 1;
n_sw_inverse = 1;

ic_sw_So4 = 3*ones(n_sw,1);
ic_sw_Sno4 = 8*ones(n_sw,1);
ic_sw_Snh4 = 6*ones(n_sw,1);
ic_sw_So5 = 2*ones(n_sw,1);
ic_sw_Kla = 145*ones(n_sw,1);


mean_scaler_dir = csvread('./DAE_ANN/ANN/Scalers/12_05_21_lstm_ann_pi_standard_fix_noSo4/mean_scaler_lstm_ann_pi_standard_fix_noSo4.csv');
std_scaler_dir = csvread('./DAE_ANN/ANN/Scalers/12_05_21_lstm_ann_pi_standard_fix_noSo4/std_scaler_lstm_ann_pi_standard_fix_noSo4.csv');
mean_scaler_dir_out = csvread('./DAE_ANN/ANN/Scalers/12_05_21_lstm_ann_pi_standard_fix_noSo4/mean_scaler_lstm_ann_pi_standard_fix_noSo4_out.csv');
std_scaler_dir_out = csvread('./DAE_ANN/ANN/Scalers/12_05_21_lstm_ann_pi_standard_fix_noSo4/std_scaler_lstm_ann_pi_standard_fix_noSo4_out.csv');
% 
% mean_scaler_dir_SNO2 = [2.4195e4; 1.0101; 1.0101; 0.0101; 2.4195e4];
% std_scaler_dir_SNO2 = [1.8937e4; 0.5812; 0.5812; 0.5812; 1.8937e4];
% 
% mean_scaler_dir_out_SNO2 = 2.4195e4;
% std_scaler_dir_out_SNO2 = 1.8937e4;

% mean_scaler_dir_SNO2 = [1.0101; 1.0101; 0.0101; 2.4195e4];
% std_scaler_dir_SNO2 = [0.5812; 0.5812; 0.5812; 1.8937e4];
% 
% mean_scaler_dir_out_SNO2 = 2.4195e4;
% std_scaler_dir_out_SNO2 = 1.8937e4;

% mean_scaler_dir_SNO2= csvread('./DAE_ANN/ANN/Scalers/27_10_21_lstm_ann_pi_standard_Sno2/mean_scaler_lstm_ann_pi_standard_Sno2.csv');
% std_scaler_dir_SNO2 = csvread('./DAE_ANN/ANN/Scalers/27_10_21_lstm_ann_pi_standard_Sno2/std_scaler_lstm_ann_pi_standard_Sno2.csv');
% mean_scaler_dir_out_SNO2 = csvread('./DAE_ANN/ANN/Scalers/27_10_21_lstm_ann_pi_standard_Sno2/mean_scaler_lstm_ann_pi_standard_Sno2_out.csv');
% std_scaler_dir_out_SNO2 = csvread('./DAE_ANN/ANN/Scalers/27_10_21_lstm_ann_pi_standard_Sno2/std_scaler_lstm_ann_pi_standard_Sno2_out.csv');

% Fuzzy_hierarchical;
% Cargar los archivos .mat
data_interp = load('Qintr_actuator_interpolated.mat');
data_no_interp = load('Qintr_actuator_no_interpolated.mat');

% Obtener el nombre del campo principal
fields_interp = fieldnames(data_interp);
fields_no_interp = fieldnames(data_no_interp);
Q_inter_ts = data_interp.(fields_interp{1});
Q_no_inter_ts = data_no_interp.(fields_no_interp{1});

% Convertir timeseries a matriz double si es necesario
if isa(Q_inter_ts, 'timeseries')
    Q_inter = [Q_inter_ts.Time, Q_inter_ts.Data];
else
    Q_inter = Q_inter_ts;
end
if isa(Q_no_inter_ts, 'timeseries')
    Q_no_inter = [Q_no_inter_ts.Time, Q_no_inter_ts.Data];
else
    Q_no_inter = Q_no_inter_ts;
end


% Diezmar la señal por 15
Q_inter_signal_diezmado = Q_inter_signal(1:15:end);
Q_inter_time_diezmado = Q_inter_time(1:140001);

% Crear nueva matriz diezmada
Q_inter_diezmado = [Q_inter_time_diezmado, Q_inter_signal_diezmado];





%%

figure;
diff = Q_inter_diezmado(:,2) - Q_no_inter(:,2);
plot(Q_inter_diezmado(:,1), diff, 'b', 'DisplayName', 'Diff');
title('Diferencia señales (diezmadas)');
xlabel('Tiempo');
ylabel('Diferencia');
legend;
grid on;
drawnow;


%%

figure;
plot(Q_inter_diezmado(:,1), Q_inter_diezmado(:,2), 'b', 'DisplayName', 'Interpolado diez.');
hold on;
plot(Q_no_inter(:,1), Q_no_inter(:,2), 'r--', 'DisplayName', 'No Interp.');
xlabel('Tiempo');
ylabel('');
legend;
title('Comparación de señales (MATLAB)');
grid on;
hold off;
drawnow;


%%





% Normalizar ambas señales (solo la columna de señal)
Q_inter_diezmado_norm = Q_inter_diezmado;
Q_inter_diezmado_norm(:,2) = (Q_inter_diezmado(:,2) - min(Q_inter_diezmado(:,2))) / (max(Q_inter_diezmado(:,2)) - min(Q_inter_diezmado(:,2)));
Q_no_inter_norm = Q_no_inter;
Q_no_inter_norm(:,2) = (Q_no_inter(:,2) - min(Q_no_inter(:,2))) / (max(Q_no_inter(:,2)) - min(Q_no_inter(:,2)));


%%

figure;
diff_norm = Q_inter_diezmado_norm(:,2) - Q_no_inter_norm(:,2);
plot(Q_inter_diezmado_norm(:,1), diff_norm, 'b', 'DisplayName', 'Diff');
title('Diferencia señales (diezmadas y normalizadas)');
xlabel('Tiempo');
ylabel('Diferencia');
legend;
grid on;
drawnow;



%%

% Graficar comparación
figure;
plot(Q_inter_diezmado_norm(:,1), Q_inter_diezmado_norm(:,2), 'b', 'DisplayName', 'Interpolado diez. norm.');
hold on;
plot(Q_no_inter_norm(:,1), Q_no_inter_norm(:,2), 'r--', 'DisplayName', 'No Interp norm.');
xlabel('Tiempo');
ylabel('Normalizado');
legend;
title('Comparación de señales normalizadas (MATLAB)');
grid on;
hold off;
drawnow;





% Define target si no existe
tg = slrealtime('TargetPC1');

% Establece dirección IP
setpref('SimulinkRealTime', 'TargetPC1_IPAddress', '192.168.7.2');

% Conectar al target
connect(tg);

disp(tg)


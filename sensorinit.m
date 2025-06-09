% initiates parameters for all sensors and actuators in use
% this file works together with reginit.m

% actuator limitations
% aeration equipment capacity (also used by controller for anti-winup)
KLa1_max = 360; %maximum possible KLa value to reactor1
KLa2_max = 360; %maximum possible KLa value to reactor2
KLa3_max = 360; %maximum possible KLa value to reactor3
KLa4_max = 360; %maximum possible KLa value to reactor4
KLa5_max = 360; %maximum possible KLa value to reactor5

% external carbon flow addition capacity (also used by controller for anti-winup)
carb1_max = 5; %maximum possible external carbon flow rate to reactor1
carb2_max = 5; %maximum possible external carbon flow rate to reactor2
carb3_max = 5; %maximum possible external carbon flow rate to reactor3
carb4_max = 5; %maximum possible external carbon flow rate to reactor4
carb5_max = 5; %maximum possible external carbon flow rate to reactor5

% pumping equipment capacity (also used by controllers for anti-windup)
Qintr_max = 5*Qin0; %maximum pump capacity for Qintr (= 92230 m3/d)
Qw_max = 0.1*Qin0; %maximum pump capacity for Qw (= 1844.6 m3/d)
Qr_max = 2*Qin0; %maximum pump capacity for Qr (= 36892 m3/d)

% actuator definitions BSM1 default strategy
% KLa5 actuator, according to BSM definition, T90=4 min, n=2
T90_KLa5 = 4; %minutes
T_KLa5 = T90_KLa5/(24*60)/3.89;
useideal_KLa5 = 0; %select ideal actuator or not (0=non-ideal, 1=ideal (for testing)) for KLa5

%sensor definitions BSM1 deafult strategy
% DO sensor, according to BSM definition (class A), T90=1 min, n=2
min_SO5 = 0; %lower measurement limit, mg/l
max_SO5 = 10; %upper measurement limit, mg/l
T90_SO5 = 1; %response time in minutes
T_SO5 = T90_SO5/(24*60)/3.89;
std_SO5 = 0.025; %standard deviation of noise
NOISEDATA_SO5 = SENSORNOISE(:, [1 2]); %define which column in SENSORNOISE to use, column 1 = time
noiseseed_SO5 = 1; %noise seed for random generator (mean=0, std=1, sample=1 per minute)
noisesource_SO5 = 1; %select noise source: 0=random generator, 1=predefined noisefile
usenoise_SO5 = 1; %select noise or not (0=no noise, 1=use noise) for DO sensor
useideal_SO5 = 0; %select ideal sensor or not (0=non-ideal, 1=ideal (for testing)) for DO sensor, overrides usenoise_SO5

% SNO sensor, according to BSM definition (class B0), T90=10 min, n=8
min_SNO2 = 0; %lower measurement limit, 0 mg N/l
max_SNO2 = 20; %upper measurement limit, 20 mg N/l
T90_SNO2 = 10; %response time in minutes
T_SNO2 = T90_SNO2/(24*60)/11.7724;
std_SNO2 = 0.025; %standard deviation of noise
NOISEDATA_SNO2 = SENSORNOISE(:, [1 3]); %define which column in SENSORNOISE to use, column 1 = time
noiseseed_SNO2 = 2; %noise seed for random generator (mean=0, std=1, sample=1 per minute)
noisesource_SNO2 = 1; %select noise source: 0=random generator, 1=predefined noisefile
usenoise_SNO2 = 1; %select noise or not (0=no noise, 1=use noise) for SNO sensor
useideal_SNO2 = 0; %select ideal sensor or not (0=non-ideal, 1=ideal (for testing)) for SNO sensor, overrides usenoise_SNO2

% DO sensor, according to BSM definition (class A), T90=1 min, n=2
min_SO4 = 0; %lower measurement limit
max_SO4 = 10; %upper measurement limit
T90_SO4 = 1; %respose time minutes
T_SO4 = T90_SO4/(24*60)/3.89;
std_SO4 = 0.025; %standard deviation of noise
NOISEDATA_SO4 = SENSORNOISE(:, [1 2]); %define which column in SENSORNOISE to use
noiseseed_SO4 = 2; %noise seed for random generator (mean=0, std=1, sample=1 per minute)
noisesource_SO4 = 1; %select noise source: 0=random generator, 1=predefined noisefile
usenoise_SO4 = 1; %select noise or not (0=no noise, 1=use noise) for sensor
useideal_SO4 = 0; %select ideal sensor or not (0=non-ideal, 1=ideal) for sensor

% SNO sensor, according to BSM definition (class B0), T90=10 min, n=8
min_SNO4 = 0; %lower measurement limit
max_SNO4 = 20; %upper measurement limit
T90_SNO4 = 10; %response time minutes
T_SNO4 = T90_SNO4/(24*60)/11.7724;
std_SNO4 = 0.025; %standard deviation of noise
NOISEDATA_SNO4 = SENSORNOISE(:, [1 3]); %define which column in SENSORNOISE to use
noiseseed_SNO4 = 2; %noise seed for random generator (mean=0, std=1, sample=1 per minute)
noisesource_SNO4 = 1; %select noise source: 0=random generator, 1=predefined noisefile
usenoise_SNO4 = 1; %select noise or not (0=no noise, 1=use noise) for sensor
useideal_SNO4 = 0; %select ideal sensor or not (0=non-ideal, 1=ideal) for sensor

% SNH sensor, according to BSM definition (class B0), T90=10 min, n=8
min_SNH4 = 0; %lower measurement limit
max_SNH4 = 20; %upper measurement limit
T90_SNH4 = 10; %response time minutes
T_SNH4 = T90_SNH4/(24*60)/11.7724;
std_SNH4 = 0.025; %standard deviation of noise
NOISEDATA_SNH4 = SENSORNOISE(:, [1 3]); %define which column in SENSORNOISE to use
noiseseed_SNH4 = 2; %noise seed for random generator (mean=0, std=1, sample=1 per minute)
noisesource_SNH4 = 1; %select noise source: 0=random generator, 1=predefined noisefile
usenoise_SNH4 = 1; %select noise or not (0=no noise, 1=use noise) for sensor
useideal_SNH4 = 0; %select ideal sensor or not (0=non-ideal, 1=ideal) for sensor

% TSS sensor, according to BSM definition (class A), T90=1 min, n=2
min_TSS4 = 0; %lower measurement limit, mg/l
max_TSS4 = 10000; %upper measurement limit, mg/l
T90_TSS4 = 1; %response time in minutes
T_TSS4 = T90_TSS4/(24*60)/3.89;
std_TSS4 = 0.025; %standard deviation of noise
NOISEDATA_TSS4 = SENSORNOISE(:, [1 2]); %define which column in SENSORNOISE to use, column 1 = time
noiseseed_TSS4 = 1; %noise seed for random generator (mean=0, std=1, sample=1 per minute)
noisesource_TSS4 = 1; %select noise source: 0=random generator, 1=predefined noisefile
usenoise_TSS4 = 1; %select noise or not (0=no noise, 1=use noise) for DO sensor
useideal_TSS4 = 0; %select ideal sensor or not (0=non-ideal, 1=ideal (for testing)) for DO sensor, overrides usenoise_TSS4

% TSS sensor, according to BSM definition (class A), T90=1 min, n=2
min_TSSin = 0; %lower measurement limit, mg/l
max_TSSin = 1000; %upper measurement limit, mg/l
T90_TSSin = 1; %response time in minutes
T_TSSin = T90_TSSin/(24*60)/3.89;
std_TSSin = 0.025; %standard deviation of noise
NOISEDATA_TSSin = SENSORNOISE(:, [1 2]); %define which column in SENSORNOISE to use, column 1 = time
noiseseed_TSSin = 1; %noise seed for random generator (mean=0, std=1, sample=1 per minute)
noisesource_TSSin = 1; %select noise source: 0=random generator, 1=predefined noisefile
usenoise_TSSin = 1; %select noise or not (0=no noise, 1=use noise) for DO sensor
useideal_TSSin = 0; %select ideal sensor or not (0=non-ideal, 1=ideal (for testing)) for DO sensor, overrides usenoise_TSSin

% TSS sensor, according to BSM definition (class A), T90=1 min, n=2
min_Q4 = 0; %lower measurement limit, mg/l
max_Q4 = 100000; %upper measurement limit, mg/l
T90_Q4 = 1; %response time in minutes
T_Q4 = T90_Q4/(24*60)/3.89;
std_Q4 = 0.025; %standard deviation of noise
NOISEDATA_Q4 = SENSORNOISE(:, [1 2]); %define which column in SENSORNOISE to use, column 1 = time
noiseseed_Q4 = 1; %noise seed for random generator (mean=0, std=1, sample=1 per minute)
noisesource_Q4 = 1; %select noise source: 0=random generator, 1=predefined noisefile
usenoise_Q4 = 1; %select noise or not (0=no noise, 1=use noise) for DO sensor
useideal_Q4 = 0; %select ideal sensor or not (0=non-ideal, 1=ideal (for testing)) for DO sensor, overrides usenoise_TSSin

% SNO sensor, according to BSM definition (class B0), T90=10 min, n=8
min_SNO5 = 0; %lower measurement limit
max_SNO5 = 20; %upper measurement limit
T90_SNO5 = 10; %response time minutes
T_SNO5 = T90_SNO5/(24*60)/11.7724;
std_SNO5 = 0.025; %standard deviation of noise
NOISEDATA_SNO5 = SENSORNOISE(:, [1 3]); %define which column in SENSORNOISE to use
noiseseed_SNO5 = 2; %noise seed for random generator (mean=0, std=1, sample=1 per minute)
noisesource_SNO5 = 1; %select noise source: 0=random generator, 1=predefined noisefile
usenoise_SNO5 = 1; %select noise or not (0=no noise, 1=use noise) for sensor
useideal_SNO5 = 0; %select ideal sensor or not (0=non-ideal, 1=ideal) for sensor

% SNH sensor, according to BSM definition (class B0), T90=10 min, n=8
min_SNH5 = 0; %lower measurement limit
max_SNH5 = 20; %upper measurement limit
T90_SNH5 = 10; %response time minutes
T_SNH5 = T90_SNH5/(24*60)/11.7724;
std_SNH5 = 0.025; %standard deviation of noise
NOISEDATA_SNH5 = SENSORNOISE(:, [1 3]); %define which column in SENSORNOISE to use
noiseseed_SNH5 = 2; %noise seed for random generator (mean=0, std=1, sample=1 per minute)
noisesource_SNH5 = 1; %select noise source: 0=random generator, 1=predefined noisefile
usenoise_SNH5 = 1; %select noise or not (0=no noise, 1=use noise) for sensor
useideal_SNH5 = 0; %select ideal sensor or not (0=non-ideal, 1=ideal) for sensor

% TSS sensor, according to BSM definition (class A), T90=1 min, n=2
min_TSS5 = 0; %lower measurement limit, mg/l
max_TSS5 = 10000; %upper measurement limit, mg/l
T90_TSS5 = 1; %response time in minutes
T_TSS5 = T90_TSS5/(24*60)/3.89;
std_TSS5 = 0.025; %standard deviation of noise
NOISEDATA_TSS5 = SENSORNOISE(:, [1 2]); %define which column in SENSORNOISE to use, column 1 = time
noiseseed_TSS5 = 1; %noise seed for random generator (mean=0, std=1, sample=1 per minute)
noisesource_TSS5 = 1; %select noise source: 0=random generator, 1=predefined noisefile
usenoise_TSS5 = 1; %select noise or not (0=no noise, 1=use noise) for DO sensor
useideal_TSS5 = 0; %select ideal sensor or not (0=non-ideal, 1=ideal (for testing)) for DO sensor, overrides usenoise_TSS4

% Q sensor, according to BSM definition (class A), T90=1 min, n=2
min_Q5 = 0; %lower measurement limit, mg/l
max_Q5 = 100000; %upper measurement limit, mg/l
T90_Q5 = 1; %response time in minutes
T_Q5 = T90_Q5/(24*60)/3.89;
std_Q5 = 0.025; %standard deviation of noise
NOISEDATA_Q5 = SENSORNOISE(:, [1 2]); %define which column in SENSORNOISE to use, column 1 = time
noiseseed_Q5 = 1; %noise seed for random generator (mean=0, std=1, sample=1 per minute)
noisesource_Q5 = 1; %select noise source: 0=random generator, 1=predefined noisefile
usenoise_Q5 = 1; %select noise or not (0=no noise, 1=use noise) for DO sensor
useideal_Q5 = 0; %select ideal sensor or not (0=non-ideal, 1=ideal (for testing)) for DO sensor, overrides usenoise_TSSin


% for a KLa actuator use simulink model KLa_actuator, and change XXX in file and simulink
% T90_XXX = 4; %minutes
% T_XXX = T90_XXX/(24*60)/3.89;
% useideal_XXX = 0; %select ideal actuator or not (0=non-ideal, 1=ideal)

% for A class sensors use simulink model sensor A, and change XXX in file and simulink
% min_XXX = ?; %lower measurement limit
% max_XXX = ?; %upper measurement limit
% T90_XXX = 1; %respose time minutes
% T_XXX = T90_XXX/(24*60)/3.89;
% std_XXX = 0.025; %standard deviation of noise
% NOISEDATA_XXX = SENSORNOISE(:, [1 2]); %define which column in SENSORNOISE to use
% noiseseed_XXX = 2; %noise seed for random generator (mean=0, std=1, sample=1 per minute)
% noisesource_XXX = 1; %select noise source: 0=random generator, 1=predefined noisefile
% usenoise_XXX = 1; %select noise or not (0=no noise, 1=use noise) for sensor
% useideal_XXX = 0; %select ideal sensor or not (0=non-ideal, 1=ideal) for sensor

% for B0 class sensors use simulink model sensor B0, and change XXX in file and simulink
% min_XXX = ?; %lower measurement limit
% max_XXX = ?; %upper measurement limit
% T90_XXX = 10; %response time minutes
% T_XXX = T90_XXX/(24*60)/11.7724;
% std_XXX = 0.025; %standard deviation of noise
% NOISEDATA_XXX = SENSORNOISE(:, [1 3]); %define which column in SENSORNOISE to use
% noiseseed_XXX = 2; %noise seed for random generator (mean=0, std=1, sample=1 per minute)
% noisesource_XXX = 1; %select noise source: 0=random generator, 1=predefined noisefile
% usenoise_XXX = 1; %select noise or not (0=no noise, 1=use noise) for sensor
% useideal_XXX = 0; %select ideal sensor or not (0=non-ideal, 1=ideal) for sensor

% for C0 class sensors use simulink model sensor C0, and change XXX in file and simulink
% min_XXX = ?; %lower measurement limit
% max_XXX = ?; %upper measurement limit
% T90_XXX = 20; %response time minutes
% T_XXX = T90_XXX/(24*60)/11.7724;
% std_XXX = 0.025; %standard deviation of noise
% NOISEDATA_XXX = SENSORNOISE(:, [1 4]); %define which column in SENSORNOISE to use
% noiseseed_XXX = 3; %noise seed for random generator (mean=0, std=1, sample=1 per minute)
% noisesource_XXX = 1; %select noise source: 0=random generator, 1=predefined noisefile
% usenoise_XXX = 1; %select noise or not (0=no noise, 1=use noise) for sensor
% useideal_XXX = 0; %select ideal sensor or not (0=non-ideal, 1=ideal) for sensor

% for B1 class sensors use simulink model sensor B1, and change XXX in file and simulink
% min_XXX = ?; %lower measurement limit
% max_XXX = ?; %upper measurement limit
% T90_XXX = 10; %response time minutes
% T_XXX = T90_XXX/(24*60)/11.7724;
% T0_XXX = 5/(24*60); %sample time (minutes = 5)
% std_XXX = 0.025; %standard deviation of noise
% NOISEDATA_XXX = SENSORNOISE(:, [1 3]); %define which column in SENSORNOISE to use
% noiseseed_XXX = 2; %noise seed for random generator (mean=0, std=1, sample=1 per minute)
% noisesource_XXX = 1; %select noise source: 0=random generator, 1=predefined noisefile
% usenoise_XXX = 1; %select noise or not (0=no noise, 1=use noise) for sensor
% useideal_XXX = 0; %select ideal sensor or not (0=non-ideal, 1=ideal) for sensor

% for C1 class sensors use simulink model sensor C1, and change XXX in file and simulink
% min_XXX = ?; %lower measurement limit
% max_XXX = ?; %upper measurement limit
% T90_XXX = 20; %response time minutes
% T_XXX = T90_XXX/(24*60)/11.7724;
% T0_XXX = 5/(24*60); %sample time (minutes = 5)
% std_XXX = 0.025; %standard deviation of noise
% NOISEDATA_XXX = SENSORNOISE(:, [1 3]); %define which column in SENSORNOISE to use
% noiseseed_XXX = 2; %noise seed for random generator (mean=0, std=1, sample=1 per minute)
% noisesource_XXX = 1; %select noise source: 0=random generator, 1=predefined noisefile
% usenoise_XXX = 1; %select noise or not (0=no noise, 1=use noise) for sensor
% useideal_XXX = 0; %select ideal sensor or not (0=non-ideal, 1=ideal) for sensor

% for D class sensors use simulink model sensor D, and change XXX in file and simulink
% min_XXX = ?; %lower measurement limit
% max_XXX = ?; %upper measurement limit
% T0_XXX = 30/(24*60); %sample time (minutes = 30)
% std_XXX = 0.025; %standard deviation of noise
% NOISEDATA_XXX = SENSORNOISE(:, [1 3]); %define which column in SENSORNOISE to use
% noiseseed_XXX = 2; %noise seed for random generator (mean=0, std=1, sample=1 per minute)
% noisesource_XXX = 1; %select noise source: 0=random generator, 1=predefined noisefile
% usenoise_XXX = 1; %select noise or not (0=no noise, 1=use noise) for sensor
% useideal_XXX = 0; %select ideal sensor or not (0=non-ideal, 1=ideal) for
% sensor


% Tutorial Muscle Behavior

% Muscle parameters
alpha = -0.0218;
k_0 = 810.8;  
k = 1621.6;
m = 0.2;
damping_ratio = 0.26;
delta_0 = 2*damping_ratio*sqrt(m*k_0);
delta = 2*damping_ratio*sqrt(m*k);
l_0 = 0.10;

alex
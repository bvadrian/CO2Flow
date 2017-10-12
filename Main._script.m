% Numerical project test file

clear
clc
close all
%% test variables
x = 1;
x_IA = 1;
G =1;
G_wavy = 1;
G_strat = 1;
D_eq = 1;
theta_strat = 0.5;
flowregime = 'A';
void_fraction = 0.5;
A_L = 1;
sigma_IA = 0.3;

%fluid properties
my_v  = 1;
my_L = 1;
Pr_v = 1;
Pr_L = 1;
k_v = 1;
k_L = 1;
p_r = 1;
M = 1;
q = 1;



%% Find the dry angle
% Use following notation for flow regime:
% flowregime: A -annular , I - intermittent , B - Bubbly, SW - stratified
% wawy , SSW - Slug/stratified wavy , S - Slug
theta_dry = theta_dry(theta_strat, G, G_wavy, G_strat,x,x_IA, flowregime );


%% Find heat transfer for the vapour perimeter
Re_v = Re_v(G,x,D_eq,my_v,void_fraction );
h_v = h_v(Re_v,Pr_v, k_v,D_eq);


%% Find heat transfer for wet perimeter

% Nucleate boiling heat transfer
h_nb = h_nb(p_r, M, q);

% convection boiling heat transfer
sigma = sigma(D_eq, A_L, theta_dry);
Re_sigma = Re_sigma(G,x,sigma,my_L, void_fraction);
h_cb = h_cb(Re_sigma, Pr_L, k_L,sigma);

S = S(D_eq,sigma,sigma_IA,x,x_IA);

h_wet = h_wet(S,h_nb,h_cb);


%% Final calculation of heat transfer coefficient

% Kattan-Thome-Favrat general equation for Local flow boiling HT coefficients
h_tp = h_tp(theta_dry,h_v,h_wet);



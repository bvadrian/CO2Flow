function theta_dry = theta_dry(theta_strat, G, G_wavy, G_strat,x,x_IA, flowregime )

%flowregime: A -annular , I - intermittent , B - Bubbly, SW - stratified
%wawy , SSW - Slug/stratified wavy S - Slug

%IA intermittent flow to annular flow transition
if flowregime ==  'A' || 'I' || 'B' || 'S'
    theta_dry = 0;
elseif flowregime == 'SW'
    theta_dry = theta_strat * ( (G_wavy-G)/(G_wavy -G_strat) )^0.61;
elseif flowregime == 'SSW'
    % x<x_IA
    theta_dry = theta_strat*x/x_IA*( (G_wavy-G)/(G_wavy -G_strat) )^0.61;

end

%This is a test comment for github
% 2. change for githubs
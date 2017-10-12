function sigma = sigma(D_eq, A_L, theta_dry)
%A_L = cross sectional area occupied by the liquid phase
sigma = D_eq/2 - sqrt( (D_eq/2)^2 - (2*A_L)/(2*pi - theta_dry) );

end

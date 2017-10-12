function h_tp = h_tp(theta_dry,h_v,h_wet)

h_tp = (theta_dry*h_v + (2*pi - theta_dry)*h_wet)/(2*pi);

return

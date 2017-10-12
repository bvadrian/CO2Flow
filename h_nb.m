function h_nb = h_nb(p_r, M, q)

h_nb = 131*p_r^(-0.0063)* (-log10(p_r))^(-0.55) * M^(-0.5)*q^(0.58);

end
function S = S(D_eq,sigma,sigma_IA,x,x_IA)

if x<x_IA
    S = 1;
else
    S = 1 - 1.14*(D_eq/0.00753)^2 * (1-sigma/sigma_IA)^2.2;
end

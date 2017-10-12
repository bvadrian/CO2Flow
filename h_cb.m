function h_cb = h_cb(Re_sigma, Pr_L, k_L,sigma)
h_cb= 0.0133*Re_sigma^0.69*Pr_L^0.4 * k_L/sigma;
end
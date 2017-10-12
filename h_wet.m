function h_wet = h_wet(S,h_nb,h_cb)
% S = nucleat boiling heat transfer supression factor
% nb - nucleate boiling transfer, cb - convective transfer
h_wet = ((S*h_nb)^3 + h_cb^3)^(1/3);

end

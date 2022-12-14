function dist = euclid(v1, v2)
% %=======================================================================
% This function computes Eucledian Distance between vector v1 and v2
% Author: Naveen Kumar Baskaran
% Date modified: 12 December 2022
% %=======================================================================

V = v1-v2;
dist = sqrt(V * V');
end
function [M_out] = add(M_in, r, Int1, Int2)


if (~exist('Int2','var') || isempty(Int2))
    Int2 = 1;
end

if Int1 < 0 || Int1 ~= round(Int1) || Int2 < 0 || Int2 ~= round(Int2) || Int1 > size(M_in, 1) || Int2 > size(M_in, 1)
    error("Your row notation is invalid")
    return
end

if r == 0
    error("Your divisor has to be a non zero Integer")
end

fprintf("We are now multiplying row %d with %d and adding it to row %d", Int1, r, Int2)


M_in(Int2, :) = M_in(Int2, :) + M_in(Int1, :).*r;

M_out = M_in;
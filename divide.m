function[M_out] = divide(M_in, d, i)


if (~exist('i','var') || isempty(i))
    i = 1;
else
    if i < 0 || i > size(M_in, 1) || i ~= round(i)  
        error("You third argument has to be an integer between 1 and the largest row size")
        return
    end
end

if d == 0
    error("Your second argument has to be a non zero integer")
    return
end

fprintf("The %d row is being devived by %d", i, d)

M_in(i , :) = (M_in(i , :)./ d);

M_out = M_in;

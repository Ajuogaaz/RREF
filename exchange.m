function[M_Out] = exchange(M_In, int1, int2)

if (~exist('int1','var') || isempty(int1)) && (~exist('int2','var') || isempty(int2))
    int1 = 1;
    int2 = 2;
end

if ~exist('int2','var') || isempty(int2)
    if int1 == 1
        int2 = 2;
    else
        int2 = int1
        int1 = 1;
    end
end

if int1 ~= round(int1) || (int1 > size(M_In, 1)) || (int1 < 1)
    error("Please provide valid integer values for your second input")
    return
end
if int2 ~= round(int2) || (int2 > size(M_In, 2)) || (int2 < 1)
    error("Please provide integer values for your third input")
    return
end
 

fprintf("We are exchanging row %d and row %d\n", int1, int2) 

M_In([int1 int2] , :) = M_In([int2, int1], :);

M_Out = M_In;



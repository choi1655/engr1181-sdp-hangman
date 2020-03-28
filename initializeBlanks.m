function result = initializeBlanks(len)
%INITIALIZEBLANKS Summary of this function goes here
%   Detailed explanation goes here

result = size(len);
for i = 1:len
    result(i) = -1;
end
end


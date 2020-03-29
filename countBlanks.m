function blanks = countBlanks(array)
%COUNTBLANKS Summary of this function goes here
%   Detailed explanation goes here
blanks = 0;
for i = 1:length(array)
    if array(i) == -1
        blanks = blanks + 1;
    end
end
end


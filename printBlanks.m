function printBlanks(blanks)
%PRINTBLANKS Summary of this function goes here
%   Detailed explanation goes here

fprintf("\n");
for i = 1:length(blanks)
    if blanks(i) == -1
        fprintf("%c ", '-');
    else
        fprintf("%c ", blanks(i));
    end
end
fprintf("\n\n");
end


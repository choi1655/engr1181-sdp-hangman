function printTriedLetters(list)
%PRINTTRIEDLETTERS Summary of this function goes here
%   Detailed explanation goes here

fprintf("Guessed Letters: [ ");
for i = 1:length(list)
    fprintf("%c ", list(i));
end
fprintf("]\n");
end


function blanks = countBlanks(array)
%COUNTBLANKS Counts the number of blanks still left to guess.
%   array: the array of blanks or letters
%   Author: Raajih Roland
blanks = 0;
for i = 1:length(array)
    if array(i) == -1
        blanks = blanks + 1;
    end
end
end


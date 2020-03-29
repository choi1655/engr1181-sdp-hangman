function printBlanks(blanks)
%PRINTBLANKS Prints the contents of the blanks array.
%   blanks: the list to be printed. If -1, underscore will be printed.
%   Author: Corey Miles

fprintf("\n");
% take a look at each element in blanks array.
for i = 1:length(blanks)
    % if index i of blanks array is -1, print underscore. Otherwise, print
    % the letter.
    if blanks(i) == -1
        fprintf("%c ", '_');
    else
        fprintf("%c ", blanks(i));
    end
end
fprintf("\n\n");
end


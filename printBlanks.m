function printBlanks(blanks)
%PRINTBLANKS Prints the contents of the blanks array.
%   blanks: the list to be printed. If -1, underscore will be printed.
%   Author: Corey Miles

fprintf("\n");
for i = 1:length(blanks)
    if blanks(i) == -1
        fprintf("%c ", '_');
    else
        fprintf("%c ", blanks(i));
    end
end
fprintf("\n\n");
end


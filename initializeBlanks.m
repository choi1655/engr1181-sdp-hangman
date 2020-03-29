function result = initializeBlanks(len)
%INITIALIZEBLANKS Initializes the array with len number of blanks to guess.
%   len: number of blanks to make. Also is going to be the size of the
%       array.
%   Author: Corey Miles

% initialize result for storing blanks.
% The value -1 means blank or underscore.
result = size(len);
for i = 1:len
    result(i) = -1;
end
end


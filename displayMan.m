function displayMan(num)
%DISPLAYMAN This component is responsible for displaying the stick figure
% based on the parameter value passed in.
%   num: number of failures

switch num
    case 0
        fprintf(" -----|\n");
        for i = 1:(7 - num)
            fprintf(" |\n");
        end
        fprintf(" -------\n");
    case 1
        fprintf(" -----|\n");
        fprintf(" |    O\n");
        for i = 1:(7 - num)
            fprintf(" |\n");
        end
        fprintf(" -------\n");
    case 2
        fprintf(" -----|\n");
        fprintf(" |    O\n");
        fprintf(" |    |\n");
        for i = 1:(7 - num)
            fprintf(" |\n");
        end
        fprintf(" -------\n");
    case 3
        fprintf(" -----|\n");
        fprintf(" |    O\n");
        fprintf(" |    |\n");
        fprintf(" |    |\n");
        for i = 1:(7 - num)
            fprintf(" |\n");
        end
        fprintf(" -------\n");
    case 4
        fprintf(" -----|\n");
        fprintf(" |    O\n");
        fprintf(" |   /|\n");
        fprintf(" |    |\n");
        for i = 1:(7 - num)
            fprintf(" |\n");
        end
        fprintf(" -------\n");
    case 5
        fprintf(" -----|\n");
        fprintf(" |    O\n");
        fprintf(" |   /|\\\n");
        fprintf(" |    |\n");
        for i = 1:(7 - num)
            fprintf(" |\n");
        end
        fprintf(" -------\n");
    case 6
        fprintf(" -----|\n");
        fprintf(" |    O\n");
        fprintf(" |   /|\\\n");
        fprintf(" |    |\n");
        fprintf(" |   /\n");
        for i = 1:(7 - num)
            fprintf(" |\n");
        end
        fprintf(" -------\n");
    case 7
        fprintf(" -----|\n");
        fprintf(" |    O\n");
        fprintf(" |   /|\\\n");
        fprintf(" |    |\n");
        fprintf(" |   / \\\n");
        for i = 1:(7 - num)
            fprintf(" |\n");
        end
        fprintf(" -------\n");
    otherwise
        fprintf("Invalid value of num: %d\n", num);
end
end

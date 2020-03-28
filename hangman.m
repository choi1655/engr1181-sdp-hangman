clc
clear

fprintf("\n************************************************\n")
fprintf('* Name:  John Choi   Date:  03/25/20           *\n')
fprintf('* Seat/Table:  C    File: hangman.m            *\n')
fprintf('* Instructor:  M. Pulcherio 04:10PM            *\n')
fprintf('************************************************\n')

% Ask the user which file to use
response = input("Enter 1 to use list of animals, 2 to use list of foods: ");
% If response is not 1 or 2, ask the user again
while response ~= 1 && response ~= 2
    fprintf("Invalid response!\n");
    response = input("Enter 1 to use list of animals, 2 to use list of foods: ");
end
inputfile = '';
if response == 1
    inputfile = "animals.txt";
else
    inputfile = "foods.txt";
end

fprintf("The game will use %s.\n", inputfile);

% read the input file
wordlist = {};
fid = fopen(inputfile, "r");
counter = 1;
while 1
    word = fgetl(fid);
    if ~ischar(word)
        break
    end
    wordlist{end + 1} = word;
    counter = counter + 1;
end

% choose random index in wordlist array
rIndex = randi([1 length(wordlist)]);
% select the word in that index
word = wordlist{rIndex};
% Length of the selected word
wordLen = length(word);

counter = 0;
failures = 0;
displayMan(failures);
while failures ~= 7 && counter < wordLen
    
    counter = counter + 1;
end
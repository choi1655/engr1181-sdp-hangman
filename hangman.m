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
correct = 1;
while 1
    word = fgetl(fid);
    if ~ischar(word)
        break
    end
    wordlist{end + 1} = word;
    correct = correct + 1;
end

% choose random index in wordlist array
rIndex = randi([1 length(wordlist)]);
% select the word in that index
word = wordlist{rIndex};
% Length of the selected word
wordLen = length(word);
% initialize blanks
blanks = initializeBlanks(wordLen);

correct = 0;
failures = 0;
displayMan(failures);
fprintf("Word is %s\n", word);

% Start the game

printBlanks(blanks);
while failures ~= 7 && correct < wordLen
    letter = input("Type a letter> ", 's');
    while length(letter) ~= 1
        fprintf("Invalid input!\n");
        letter = input("Type a letter> ", 's');
    end
    
    exists = contains(word, letter, "IgnoreCase", true);
    if exists == 0
        failures = failures + 1;
        displayMan(failures);
        fprintf("Does not exist\n");
    else
        fprintf("Exists\n");
        for i = 1:length(blanks)
            if word(i) == response
                blanks(i) = response;
            end
        end
        correct = correct + 1;
    end
    printBlanks(blanks);
end

if failures == 7
    fprintf("You lose!\n");
else
    fprintf("You win!\n");
end
fprintf("Program terminated\n");
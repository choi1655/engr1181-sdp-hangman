clc
clear

fprintf("\n************************************************\n")
fprintf('* Name:  John Choi   Date:  03/28/20           *\n')
fprintf('*        Corey Miles                           *\n')
fprintf('*        Raajih Roland                         *\n')
fprintf('* Seat/Table:  C    File: hangman.m            *\n')
fprintf('* Instructor:  M. Pulcherio 04:10PM            *\n')
fprintf('************************************************\n')

% Ask the user which file to use
response = input("Enter 1 to use list of animals, 2 to use list of foods: ");
% If user does not input anything, program terminates
if isempty(response)
    fprintf("No input. Program terminated.\n");
    return
end
% If response is not 1 or 2, ask the user again
while response ~= 1 && response ~= 2
    fprintf("Invalid response!\n");
    response = input("Enter 1 to use list of animals, 2 to use list of foods: ");
end
% Variable to hold the file name
inputfile = "";
if response == 1
    inputfile = "animals.txt";
else
    inputfile = "foods.txt";
end

% Confirmation message
fprintf("The game will use %s.\n", inputfile);

% read the input file line by line
wordlist = {};
fid = fopen(inputfile, "r"); % open the file in read mode
while 1
    % read line
    word = fgetl(fid);
    % if line isn't word, done reading so break out of the loop
    if ~ischar(word)
        break
    end
    % store the word in the next index of wordlist
    wordlist{end + 1} = word;
end

% choose random index in wordlist array
rIndex = randi([1 length(wordlist)]);
% select the word in that index
word = wordlist{rIndex};
% Length of the selected word
wordLen = length(word);
% initialize blanks array that has underscores
blanks = initializeBlanks(wordLen);
% number of incorrect answers
failures = 0;

% for debugging
% fprintf("Word is %s\n", word);

% Start the game

% display default value of hangman
displayMan(failures);
% Print contents of blanks array
printBlanks(blanks);
% Store already-guessed answers from the user
guessed = ones(1, wordLen);
% number of leftover blanks/guesses for the user to guess
numBlanks = length(blanks);
% loop until number of failures is 7 or number of blanks is 0
while failures ~= 7 && numBlanks ~= 0
    % ask the user for guess and store it
    letter = input("Type a letter> ", 's');
    % if the length of input is not 1, ask again
    while length(letter) ~= 1
        fprintf("Invalid input!\n");
        letter = input("Type a letter> ", 's');
    end
    
    % does the answer contain the guess letter?
    exists = contains(word, letter, "IgnoreCase", true);
    % if not,
    if exists == 0
        % increase the number of failures and display hangman
        failures = failures + 1;
        displayMan(failures);
    else
        % if yes, check to see if the user already guessed the letter
        % already and replace the blanks/underscores to letter to print
        duplicate = false;
        % take a look at each letter in answer
        for i = 1:length(word)
            if word(i) == letter
                % check if duplicate
                % if index i of guessed array is 0, means the letter was
                % guessed before
                if guessed(i) == 0
                    duplicate = true;
                    break;
                end
                % decrement the number of underscores/blanks by one per
                % letter
                numBlanks = numBlanks - 1;
                % replace the underscore with actual letter
                blanks(i) = letter;
                guessed(i) = 0;
            end
        end
        % if duplicate letter, increase the number of failures and display
        % hangman
        if duplicate
            failures = failures + 1;
            displayMan(failures); 
        end
    end
    % print the blanks or letters
    printBlanks(blanks);
end

% If number of failures was 7, the user lost the game.
if failures == 7
    fprintf("You lose!\n");
    fprintf("The word was %s\n", word);
else
    fprintf("You win!\n");
end
fprintf("Program terminated\n");
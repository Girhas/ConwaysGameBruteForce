%a1825225 - Irhas Gill

%***Third version of BruteforceMethod. This is the same as BruteForce2 but
%implements wraparound by calling modified versions of checkAlive and
%getActiveNeighbours. Therefore, it also does not surround the board with
%zeroes

%This program takes in a "board" from an excel spreadsheet and performs
%Conway's game of life on it

%Get board from spreadsheet, get dimensions and display it
function [] = BruteforceMethod3(filename)
    Board = csvread(filename);
    imshow(Board,'InitialMagnification',1200);
    [numRows, numCols] = size(Board);

    %Make sure the Board size is acceptable
    while (numRows <=1 && numCols <=1)
        disp("Invalid board size, please change the board spreadsheet to have more than 1 columns and/or rows");
        filename = input("Please enter the filename of the new board spreadsheet: ",'s');
        Board = csvread(filename);
        [numRows, numCols] = size(Board);
    end

    %Variable storing next board layout so that adjacent pixels do not
    %interfere when modifying cells
    newBoard = zeros(numRows, numCols);

    %Get number of rounds
    rounds = input("How many rounds of Conway's game of life?");

    %Get pause time
    pauseTime = input("How long between each round of the game?");

    %Repeat for a specified amount of rounds - consider replacing with while
    %loop 
    for n = 1:rounds
        %delay before next picture is displayed
        pause(pauseTime);
        %Outer loop
        for r = 1:numRows
            %inner loop
            for c = 1:numCols
                %Change each pixel according to Conway's game of life
                pixelVal = checkAlive2(r,c,Board);
                newBoard(r,c) = pixelVal;
            end
        end
        %Update board with changed values so that next iteration will change
        Board = newBoard;

        %Display updated board as figure
        imshow(Board,'InitialMagnification',1200);
    end
    %Save final board as spreadsheet for testing
    csvwrite("Final_Board.csv", Board);
end

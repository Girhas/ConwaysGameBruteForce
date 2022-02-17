%a1825225 - Irhas Gill

%This program is a driver for BruteforceMethod3. Outputs are compared to
%the gifs under "Examples of patterns" on the wikipedia page for Conway's
%game of life. If automations behave as they do in the gifs and the
%spaceships reenter the board from the opposite side they left, the program
%is working correctly

%Access wikipedia page here: https://en.wikipedia.org/wiki/Conway's_Game_of_Life
%or here if you're feeling brave: shorturl.at/fnxVY


%Demonstration of program - 400 rounds, 0.001 second delay
BruteforceMethod3("Boardd.csv");

%Testing oscillators - 100 rounds, 0.1 second delay
BruteforceMethod3("Oscillator.csv");

%Testing spaceships - 100 rounds, 0.1 second delay
BruteforceMethod3("Spaceships.csv");

%Testing still lifes - 100 rounds, 0.1 second delay
BruteforceMethod3("Still_lifes.csv");

%Testing Empty array - 3 rounds, 1 second delay
BruteforceMethod3("Empty_array.csv");

%Testing disjointed array - 3 rounds, 1 second delay
BruteforceMethod3("Disjointed_array.csv");

disp("All tests passed babyyyy");
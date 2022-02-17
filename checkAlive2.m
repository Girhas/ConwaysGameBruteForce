%a1825225 Irhas Gill
%This program checks whether a cell should be alive or dead based on the
%game rules. Rather than outputting as a boolean, isAlive will be either 1
%or 0

function [isAlive] = checkAlive2(row,col,Array)
    %Get number of alive neighbours using the wraparound logic of
    %getActiveNeighbours2
    neighbours = getActiveNeighbours2(row,col,Array);
    isAlive = 0;
    if (Array(row,col)==1) %If cell is alive
        %If number of active neighbouring cells are 2 or 3
        if(neighbours == 2 || neighbours==3)
            isAlive = 1;
        end
    elseif(neighbours == 3) %if cell is dead
        isAlive = 1;
    end    
end

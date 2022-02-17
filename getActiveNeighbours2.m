%a1825225 - Irhas Gill
%Same as getActiveNeighbours but edge case is accounted for by going to the
%opposite side of the array if iterating outside of dimensions.
function [aliveNum] = getActiveNeighbours2(row,col,Array)
    %initialise aliveNum
    aliveNum = 0;
    
    %Get dimensions of Array
    [numRows, numCols] = size(Array);
    
    %Iterate from row before to row after by adding i to parameter row. 
    for i =-1:1
        %Iterate from column before to column after
        for j = -1:1
            %modulus function used to avoid going out of bounds
            if(Array(mod_changed(i+row,numRows),mod_changed(j+col,numCols))==1)
                aliveNum = aliveNum+1;
            end
        end
    end
    
    %Subtract aliveNum by 1 if the central cell is alive. 
    aliveNum = aliveNum-Array(row,col);
end

%Modified to make canvas wraparound. Code inspired from
%https://stackoverflow.com/questions/707370/clean-efficient-algorithm-for-wrapping-integers-in-c

    

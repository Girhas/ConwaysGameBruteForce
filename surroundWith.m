%a1825225 Irhas Gill
%This program is from a previous workshop and surrounds an array A with a
%chosen element n

function [surround] = surroundWith(A,n)
    [numRows,numCols] = size(A);
    surround = zeros(numRows+2,numCols+2);
    %Populate top row
    for col = 1:numCols+2
        surround(1,col) = n;
        surround(numRows+2,col)=n;
    end
    %Rest of array
    for row = 2:numRows+1
        surround(row,:)= zeros(1,numRows+2);
        %make first and last column the surrounding element
        surround(row,1)=n;
        surround(row,numCols+2)=n;
        
        %Populate middle of array with original array
        for col = 2:numCols+1
            surround(row,col) = A(row-1,col-1);
        end
    end
end
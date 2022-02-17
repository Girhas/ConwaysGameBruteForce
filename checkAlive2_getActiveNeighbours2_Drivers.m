%a1825225 - Irhas Gill

%This program is a driver for checkAlive and getActiveNeighbours. Both
%functions were placed in the same driver because getActiveNeighoburs is
%part of CheckAlive and this makes it easier to check their results
B = [0 0 0 0; 1 1 1 0; 0 1 0 0; 1 1 1 1];
B

%Test 1
disp("Test 1");
getActiveNeighbours2(4,4,B) %should be 2
checkAlive2(4,4,B) %should be 1

%Test 2
disp("Test 2");
getActiveNeighbours2(2,2,B) %should be 3
checkAlive2(2,2,B) %should be 1

%Test 3
disp("Test 3");
getActiveNeighbours2(4,3,B) %should be 3
checkAlive2(4,3,B) %should be 1

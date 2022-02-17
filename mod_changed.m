%a1825225 - Irhas Gill
%This program is the modulus function but instead of returning 0 it returns
%the base. This function was created so that getActiveNeighbours2 would
%check the last column/row instead of the "0th" column when used on the
%first column/row
function [modded] = mod_changed (number,base)
    modded = mod(number,base);
    if(modded == 0)
        modded = base;
    end
end
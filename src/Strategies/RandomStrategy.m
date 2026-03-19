classdef RandomStrategy < MoveStrategy
    methods
        function [x,y] = move(obj,x,y)
            x = x + randn();
            y = y + randn();
        end
    end
end


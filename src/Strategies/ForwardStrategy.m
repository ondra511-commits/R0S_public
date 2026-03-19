classdef ForwardStrategy < MoveStrategy
    methods
        function [x,y] = move(obj,x,y)
            x = x + 1;
        end
    end
end


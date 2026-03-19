classdef ZigZagStrategy < MoveStrategy
    properties (Access = private)
        step = 1;
        direction = 1; % 1 = nahoru, -1 = dolu
    end
    
    methods
        function [x, y] = move(obj, x, y)
            x = x + obj.step;
            y = y + obj.step * obj.direction;
            obj.direction = -obj.direction; % změna směru
        end
    end
end

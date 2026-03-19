classdef CircleStrategy < MoveStrategy
    properties
        r = 1;        % poloměr kruhu
        theta = 0;    % aktuální úhel
        dtheta = pi/20; % krok úhlu
    end
    
    methods
        function [x, y] = move(obj, x, y)
            x = x + obj.r * cos(obj.theta);
            y = y + obj.r * sin(obj.theta);
            obj.theta = obj.theta + obj.dtheta; % posun po kruhu
        end
    end
end

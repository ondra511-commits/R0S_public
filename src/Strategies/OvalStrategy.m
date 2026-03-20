classdef OvalStrategy < MoveStrategy
    properties
        r1 = 1;        % poloměr kruhu
        r2 = 2; 
        theta = 0;    % aktuální úhel
        dtheta = pi/20; % krok úhlu
    end
    
    methods
        function [x, y] = move(obj, x, y)
            x = x + obj.r1 * cos(obj.theta);
            y = y + obj.r2 * sin(obj.theta); %koment 2
            obj.theta = obj.theta + obj.dtheta; % posun po kruhu
        end
    end
end

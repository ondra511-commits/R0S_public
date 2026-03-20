classdef Robot < handle
    properties
        strategy
        x
        y
    end
    
    methods
        function obj = Robot(strategy, x, y)
            obj.strategy = strategy;
            obj.x = x;
            obj.y = y;
        end
        
        function obj = move(obj)
            [obj.x, obj.y] = obj.strategy.move(obj.x, obj.y);
        end
    end
end


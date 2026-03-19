classdef (Abstract) MoveStrategy < handle
    methods (Abstract)
        [x,y] = move(obj, x, y)
    end
end


clc,clear

disp("hello world")

hold(gca,"on")

addpath("main_classes\");
addpath("Strategies\");

r = Robot(ForwardStrategy(), 0, 0);
r = r.move()

%r.strategy = CircleStrategy();
%r = r.move()

%r.strategy = RandomStrategy();
%r = r.move()

%r.strategy = ZigZagStrategy();
%r = r.move()


numSteps = 100;

hold on 

for i = 1:numSteps
    r = r.move();
    plot(r.x, r.y, ".", "Color", "r");
    pause(0.1);
end

hold off
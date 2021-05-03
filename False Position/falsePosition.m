function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
%falsePosition finds the root of a function using false position method
%Test # of arguements
if nargin < 3
    error('Not enough inputs');
end
if nargin < 4
    es = 0.0001;
end
if nargin < 5
    maxit = 200;
end
if nargin > 6
        error('Too many arguements')
end
        
%Run equation
ea = 100;
xIIIpre = 0;
iter = 0;
while ea > es
    if iter > maxit
           break %Works?
    else
                xIII = xu - (((xl-xu)*func(xu))/(func(xl)-func(xu)));
        ea = (xIII - xIIIpre)/xIII;
        if (func(xIII) * xu) < 0
            xu = xIII;
        elseif (func(xIII) * xl) < 0
            xl = xIII;
        end
        iter = iter + 1;
        xIIIpre = xIII;
    end

end
root = xIII; %root - predicted root
fx = func(xIII); %fx - function at root
%ea - aproximate error
%iter - # of iterations
end

function [base2] = binaryConverter(base10)
%binary A simple function to convert a base10 number to binary
%   Inputs:
%       base10 - A number in base10
%   Outputs:
%       base2 - The base10 number converted to binary
if base10 == 0
    base2 = 0;
elseif base10 == 1
    base2 = 1;
else
fractionPower = (log(base10)/log(2));
largestPower = floor(fractionPower);
x = largestPower;
p = 1;
a = zeros(1,x);
while x >= 0
  if (base10 - (2^x)) >= 0
    base10 = base10 - (2^x);
  a(:,p) = base10;
  else 
   a(:,p) = -1
  end
  x = x-1;
  p = p+1;
end
a = a >= 0;
base2 = a;
disp(base2);
end
function [L, U, P] = luFactor(A)
% luFactor(A)
%	LU decomposition with pivotiing
% inputs:
%	A = coefficient matrix
% outputs:
%	L = lower triangular matrix
%	U = upper triangular matrix
%       P = the permutation matrix
%Initial Conditions
if nargin ~= 1
    error('Incorrect number of arguements')
end
%Setup
n = length(A);
L = eye(n);
U = zeros(n,n);
P = L;
%Transformation
for z= 1:n-1
    [~,r] = max(abs(A(z:n,z)));
    r = n - (n-z+1)+r;
    A([z r],:) = A([r z],:);
    P([z r],:) = P([r z],:); %Pivot
    for i = z+1:n
        L(i,z) = A(i,z)/A(z,z);
        for j = 1:n
            U(z,j) = A(z,j)
            A(i,j) = A(i,j) - L(i,z) * A(z,j);
        end
    end
end
U(:,:) = A(:,:);
return
if P*A ~= L*U
    error('Code broke');
end
end
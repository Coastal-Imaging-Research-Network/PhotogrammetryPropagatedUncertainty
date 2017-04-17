function Cnew=enforceCovariance(C,thresh)
if nargin==1
   thresh=1e-10; 
end
count = 0;

while count<10 && (~issymmetric(C) || ~calcIsPSD(C))
% make sure positive semi definite
C = enforcePositiveDefinite(C);
% make sure symmetric
C = enforceSymmetric(C,thresh);

count = count+1;

end
Cnew = C;

end

function isPSD = calcIsPSD(C)
[~,D]=eig(C);

eigenvals = diag(D);

isPSD = ~sum(eigenvals<0)>0;
end
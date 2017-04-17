function Cnew = enforcePositiveDefinite(C)
[V,D]=eig(C);

d=diag(D);
d(d<=0)=eps;

Cnew= V*diag(d)*V';

end
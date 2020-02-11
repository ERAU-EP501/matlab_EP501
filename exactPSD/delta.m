function f=delta(x,xi)

%Expresses a dirac delta function (unit weight) on a grid x with particle
%positions xi

f=zeros(size(x));

dx=x(2)-x(1);
for ixi=1:length(xi)
    inds=find(abs(x-xi(ixi))<dx);
    f(inds)=1;
end %for

end %function delta
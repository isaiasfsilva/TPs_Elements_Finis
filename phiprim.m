function y=phiprim(x,i,k,xm)
    switch i
           case 1                                       %Faire calc pour i = 1
                for j=1:length(x)
                    y(j) = psiprim(x(j),i,xm(k+1),xm(k));
                end
           case 2                                       %Faire calc pour i = 2
                for j=1:length(x)
                    y(j) = psiprim(x(j),i,xm(k+1),xm(k));
                end
           otherwise
                error('Value not supporteds. The values are: i= 1 or 2');

end;
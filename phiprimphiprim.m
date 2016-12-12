function y=phiprimphiprim(x, il, jl, k, xm)
         y=phiprim(x,il,k,xm) .*  phiprim(x,jl,k,xm);
end;
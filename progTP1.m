
     o=1;
     beta=1;
     alpha=1;
     aa=0;
     bb=pi;
     n=10;
     h=(bb-aa)/n;
     xm=aa:h:bb;
     
     

     F=sparse(n+1,1);
     for k=1:n
         for il=1:2
             ig=k-1 + il ;
             F(ig)=F(ig)+calcintegration('phifb',xm(k),xm(k+1),il,k,xm);
         end
     end
     

     

     K=sparse(n+1,n+1);
     M=K;
     for k=1:n
         for il=1:2
             ig=k-1 + il;
             for jl=1:2
                 jg=k-1 + jl;
                 M(ig,jg) = M(ig,jg) + calcintegration('phiphi',xm(k),xm(k+1),il,jl,k,xm);
                 K(ig,jg) = K(ig,jg) + calcintegration('phiprimphiprim',xm(k),xm(k+1),il,jl,k,xm);
             end
         end
     end
     
     
     
     K=beta*K + alpha*M;
     
     
     K(1,1)=10^7;
     K(n+1,n+1)=10^7;
     
     F(1)=0;
     F(n+1)=0;
     
     u=K\F;
     
     plot(xm,u);



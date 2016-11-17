function version3(a,preynum,preyrow,preyfunc,popln)

i=0;
j=0;
preyarray=preylist(a,preynum,preyrow,preyfunc,popln);
popln3=popln;

for k=1:a(3)    
    
    neighbors=nearby(preyarray,i,j);
    target=worstprey(preyarray,neighbors);

    popln3=elimination3(a,popln3,preyarray,target);
    preyarray=preylist(a,preynum,preyrow,preyfunc,popln3);

    n=sqrt(preyarray.total);
    for i=1:n
        for j=1:n
            matprey3(i,j)=n*(i-1)+j;
            matval3(i,j)=preyarray.val(n*(i-1)+j);
        end
    end
  

    i=ceil(target(1)/n);
    j=mod(target(1),n);
    if j==0
        j=n;
    end
    matpred3=zeros(n);
    matpred3(i,j)=1;
    
    matprey3
    matval3
    
end



end
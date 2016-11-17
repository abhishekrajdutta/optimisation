function version2(a,preynum,preyrow,preyfunc,popln)

i=0;
j=0;
preyarray=preylist(a,preynum,preyrow,preyfunc,popln);
popln2=popln;

for k=1:a(3)    
    
    neighbors=nearby(preyarray,i,j);
    target=worstprey(preyarray,neighbors);

    popln2=elimination2(a,popln2,preyarray,target);
    preyarray=preylist(a,preynum,preyrow,preyfunc,popln2);

    n=sqrt(preyarray.total);
    for i=1:n
        for j=1:n
            matprey2(i,j)=n*(i-1)+j;
            matval2(i,j)=preyarray.val(n*(i-1)+j);
        end
    end
  

    i=ceil(target(1)/n);
    j=mod(target(1),n);
    if j==0
        j=n;
    end
    matpred2=zeros(n);
    matpred2(i,j)=1;
    
end

matprey2;
matval2

end
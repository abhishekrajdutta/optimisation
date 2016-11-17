function version1(a,preynum,preyrow,preyfunc,popln)

i=0;
j=0;
preyarray=preylist(a,preynum,preyrow,preyfunc,popln);
popln1=popln;

for k=1:a(3)    
    
    neighbors=nearby(preyarray,i,j);
    target=worstprey(preyarray,neighbors);

    popln1=elimination1(a,popln1,preyarray,target);
    preyarray=preylist(a,preynum,preyrow,preyfunc,popln1);

    n=sqrt(preyarray.total);
    for i=1:n
        for j=1:n
            matprey1(i,j)=n*(i-1)+j;
            matval1(i,j)=preyarray.val(n*(i-1)+j);
        end
    end
    matval1;
    

    i=ceil(target(1)/n);
    j=mod(target(1),n);
    if j==0
        j=n;
    end
    matpred1=zeros(n);
    matpred1(i,j)=1;
    matpred1;
    
end

matprey1;
matval1

end

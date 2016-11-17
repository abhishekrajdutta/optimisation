function calleraux(a)
% a=[45 45 1000]

popln=prepare(a);

preynum=floor(a(1)*0.8);    
prednum=a(1)-preynum ;         
rowsel=randperm(a(1));
preyrow=rowsel(1:preynum);
preyfunc=zeros(preynum,1);

preyarray=preylist(a,preynum,preyrow,preyfunc,popln);


n=sqrt(preynum);

for i=1:n
    for j=1:n
        matprey(i,j)=n*(i-1)+j;
        matval(i,j)=preyarray.val(n*(i-1)+j);
    end
end

matprey;
matval;


% version1(a,preynum,preyrow,preyfunc,popln);

% version2(a,preynum,preyrow,preyfunc,popln);

version3(a,preynum,preyrow,preyfunc,popln);



end
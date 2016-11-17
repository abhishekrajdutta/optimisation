function myoutput=preylist(a,preynum,preyrow,preyfunc,popln)         


for i=1:preynum
    for j=0:(a(2)-1)
        preyfunc(i)=preyfunc(i)+(popln((j*a(1))+preyrow(i)))^2; %%func=x1^2 + x2^2 +x3^2.... and it needs to be minimised
        prey.id(i)=preyrow(i);
        prey.val(i)=preyfunc(i);
        prey.pos(i)=i;
    end
end  
prey.total=preynum;
myoutput=prey;
  
end

        
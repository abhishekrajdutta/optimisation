function op=elimination1(a,popln,preyarray,target)

for i=1:a(2)
     popln((preyarray.id(target(1))),i)= popln((preyarray.id(target(2))),i);   
end

op=popln;
end


function op=elimination2(a,popln,preyarray,target)

for i=1:a(2)
     popln((preyarray.id(target(1))),i)=crossover([popln((preyarray.id(target(2))),i) popln((preyarray.id(target(3))),i)]);   
     %popln((preyarray.id(target(1))),i)=mutate(popln((preyarray.id(target(2))),i));
end

op=popln;
end


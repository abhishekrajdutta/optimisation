function op=worstprey(preyarray,neighbors)

preynum=size(neighbors);
maxval=preyarray.val(neighbors(1));
minval=preyarray.val(neighbors(1));
maxpos=neighbors(1);
minpos=neighbors(1);


for j=1:preynum(2)
        if (preyarray.val(neighbors(j))>maxval)
                maxval=preyarray.val(neighbors(j));
                maxpos=neighbors(j);
                      
        elseif (preyarray.val(neighbors(j))<minval)
                minval=preyarray.val(neighbors(j));
                minpos=neighbors(j);
               
        end
end

temp=preyarray.val(minpos);
preyarray.val(minpos)=preyarray.val(maxpos);
minval=preyarray.val(neighbors(1));
nexminpos=neighbors(1);
for j=1:preynum(2)
        if (preyarray.val(neighbors(j))<minval)
                minval=preyarray.val(neighbors(j));
                nexminpos=neighbors(j);
        end
end
preyarray.val(minpos)=temp;


op=[maxpos minpos nexminpos];

end

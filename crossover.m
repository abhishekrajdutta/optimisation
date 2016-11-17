function op=crossover(a)

b=dec2bin(a,14);
x(1)=randi(13);
x(2)=x(1)+randi(14-x(1));
for i=x(1):x(2)
    temp=b(1,i);
    b(1,i)=b(2,i);
    b(2,i)=temp;
end
a=bin2dec(b);

if(a(1)>a(2))
    op=a(2);
else
    op=a(1);
end

end

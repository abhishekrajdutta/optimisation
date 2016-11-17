function op=mutate(a)

b=dec2bin(a,14);
x(1)=randi(14);
x(2)=4*rand(1,1);
if(x(2)<3)
    if (b(x(1))==0)
        b(x(1))='1';
    else
        b(x(1))='0';
    end
end

a=bin2dec(b);
op=a;

end

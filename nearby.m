function op=nearby(array,i,j)

n=sqrt(array.total);

if(i==0 && j==0)
    i=randi(n);
    j=randi(n);
end


if (~(i==1 || i==n || j==1 || j==n))
        valuelist=[(((n*(i-1))+j)-n-1) (((n*(i-1))+j)-n) (((n*(i-1))+j)-n+1) (((n*(i-1))+j)-1) (((n*(i-1))+j)+1) (((n*(i-1))+j)+n-1) (((n*(i-1))+j)+n) (((n*(i-1))+j)+n+1)];

elseif (j==1 && i~=1 && i~=n)
        valuelist=[(((n*(i-1))+j)-n) (((n*(i-1))+j)-n+1) (((n*(i-1))+j)+1) (((n*(i-1))+j)+n) (((n*(i-1))+j)+n+1)] ;  
        
elseif (j==n && i~=1 && i~=n)
        valuelist=[(((n*(i-1))+j)-n-1) (((n*(i-1))+j)-n) (((n*(i-1))+j)-1) (((n*(i-1))+j)+n-1) (((n*(i-1))+j)+n)];

elseif (i==1 && j~=1 && j~=n)  
        valuelist=[(((n*(i-1))+j)-1) (((n*(i-1))+j)+1) (((n*(i-1))+j)+n-1) (((n*(i-1))+j)+n) (((n*(i-1))+j)+n+1)];
        
elseif (i==n && j~=1 && j~=n)
        valuelist=[(((n*(i-1))+j)-n-1) (((n*(i-1))+j)-n) (((n*(i-1))+j)-n+1) (((n*(i-1))+j)-1) (((n*(i-1))+j)+1)];
        
elseif (i==1 && j==1)
        valuelist=[ 1+1 1+n 1+n+1];
        
elseif (i==1 && j==n)
        valuelist=[ n-1 n+n-1 n+n ];
        
elseif (i==n && j==1)
        valuelist=[ (n-1)*(n-1) (n-1)*(n-1)+1 (n)*(n-1)+2];
        
elseif (i==n && j==n)
        valuelist=[ n*(n-1)-1 n*(n-1) n*n-1];            
end
op=valuelist;
        
end
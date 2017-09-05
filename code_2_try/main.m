clc
clear
k=4;
n=3;
m=2^k;
while true
    A=double(int8(rand(m,n)));
    if rank(A)==n
        break;
    end
end
b=double(int8(rand(m,1)));
[t1,t2,t3,t4,f,x,X]=chansheng(m,k,n);

count=0;
for i=1:2^n
    for j=1:2^m
        if result(A,b,t1,t2,t3,t4,x(:,i),f(:,j),k,X)==1
            disp(x(:,i));
            disp(f(:,j));
        end
        count=count+1;
    end
end

disp('ÔËĞĞ½áÊø');
disp(count)
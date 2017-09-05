function [t1,t2,t3,t4,f,x,X]=chansheng(m,k,n)
t1=int8(rand(1,k));
t2=int8(rand(1,k));
t3=int8(rand(1,k));
t4=int8(rand(1,k));
for i=1:k
    if mod2(mod2(mod2(t1(i),t2(i)),t3(i)),t4(i)) ~= 0
        t4(i)=mod2(t4(i),1);
    end
end

%f向量产生
temp=zeros(1,2^m);
for i=1:2^m
    temp(i)=i-1;
end
temp=dec2bin(temp);
f=zeros(m,2^m);
for i=1:2^m
    for j=m:-1:1
        if temp(i,j)=='1'
            f(m-j+1,i)=1;
        end
    end
end
%x向量产生n维
temp=zeros(1,2^n);
for i=1:2^n
    temp(i)=i-1;
end
temp=dec2bin(temp);
x=zeros(n,2^n);
for i=1:2^n
    for j=n:-1:1
        if temp(i,j)=='1'
            x(n-j+1,i)=1;
        end
    end
end

%X向量k维
temp=zeros(1,2^k);
for i=1:2^k
    temp(i)=i-1;
end
temp=dec2bin(temp);
X=zeros(k,2^k);
for i=1:2^k
    for j=k:-1:1
        if temp(i,j)=='1'
            X(k-j+1,i)=1;
        end
    end
end



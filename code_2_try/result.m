function if_ok=result(A,b,t1,t2,t3,t4,x,f,k,X)
if_ok=1;

temp=A*x;
for i=1:size(f,1)
    if mod2(temp(i),f(i))~=b(i)
        if_ok=0;
        return; 
    end
end

if walsh(t1,k,f,X)~=0.125
    if_ok=0;
    return;
end
if walsh(t2,k,f,X)~=0.125
    if_ok=0;
    return;
end
if walsh(t3,k,f,X)~=-0.125
    if_ok=0;
    return;
end
if walsh(t4,k,f,X)~=-0.125
    if_ok=0;
    return;
end
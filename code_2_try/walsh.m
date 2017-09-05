function Walsh=walsh(varname,k,f,x)
%wslshÆ×Öµ
Walsh=0;
for i=1:2^k
    ssum=x(1,i)*varname(1);
    for j=2:k
        ssum=mod2(ssum,x(j,i)*varname(j));
    end
    ssum=mod2(f(i),ssum);
    Walsh=Walsh+(-1)^ssum;
end
Walsh=Walsh*2^(-k);

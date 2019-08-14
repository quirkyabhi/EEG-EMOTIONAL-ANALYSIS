function pccval= pcc(x,y)
pccval=cov(x,y)/(std(x)*std(y));
end
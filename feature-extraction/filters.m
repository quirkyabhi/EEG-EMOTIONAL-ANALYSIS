row=0;
delta=zeros(40960,768);
for i=1:40960
    row=row+1;
    delta(row,:)=bandpass(PLV_new1(i,:),[1 3],128);
    
end
    
clear;
load('featureData.mat');
arr=zeros(1280,160);
for i=1:32
    for j=1:40
        temp=(eval(['featureData.s',num2str(i),'.v',num2str(j),'.psd']));
        for k=1:5
                arr(j+40*(i-1),(k-1)*32+1:k*32)=temp(:,k);
        end
        
    end
end

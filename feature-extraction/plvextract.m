
PLV_feature=zeros(1280,1024);
for i=1:32
    
    for j=1:40
        Data=(eval(['deapData.data.s',num2str(i),'.v',num2str(j),'.data.eeg']));
        for k=1:32
            for m=1:32
                PLV_feature(j+40*(i-1),k+32*(m-1))=PLI(Data(k,:),Data(m,:));
            end
        end
    end
end
            
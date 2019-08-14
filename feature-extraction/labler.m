val_labels=zeros(1280,1);
arousal_label={1280,1};
for i=1:32
    for j=1:40
        %image(eval(['featureData.s',num2str(i),'.v',num2str(j),'.psd']));
        if eval(['deapData.data.s',num2str(i),'.v',num2str(j),'.labels(1,1)'])>=5
            %saveas(gcf,['0//',num2str(j+40*(i-1)),'.png']);
            val_labels(j+40*(i-1),1)=1;
            
        else
            %saveas(gcf,['1//',num2str(j+40*(i-1)),'.png']);
            val_labels(j+40*(i-1),1)=0;
            
        end
        if eval(['deapData.data.s',num2str(i),'.v',num2str(j),'.labels(1,2)'])>=5
            %saveas(gcf,['00//',num2str(j+40*(i-1)),'.png']);
            arousal_labels(j+40*(i-1),1)=1;
            
        else
            %saveas(gcf,['11//',num2str(j+40*(i-1)),'.png']);
             arousal_labels(j+40*(i-1),1)=0;
        end
    end
end
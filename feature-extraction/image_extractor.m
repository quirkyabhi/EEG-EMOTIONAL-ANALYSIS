for i=1:32
    for j=1:40
        image(eval(['featureData.s',num2str(i),'.v',num2str(j),'.psd']));
        if eval(['deapData.data.s',num2str(i),'.v',num2str(j),'.labels(1,1)'])>=5
            saveas(gcf,['0//',num2str(j+40*(i-1)),'.png']);
        else
            saveas(gcf,['1//',num2str(j+40*(i-1)),'.png']);
        end
        if eval(['deapData.data.s',num2str(i),'.v',num2str(j),'.labels(1,2)'])>=5
            saveas(gcf,['00//',num2str(j+40*(i-1)),'.png']);
        else
            saveas(gcf,['11//',num2str(j+40*(i-1)),'.png']);
        end
    end
end

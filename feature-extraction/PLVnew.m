%PLV_feature=zeros(1280,1024);
PLV_new=zeros(4710400,128*3);
row=0;
for i=1:32
    for j=1:40
        Data=(eval(['deapData.data.s',num2str(i),'.v',num2str(j),'.data.eeg']));
        for k = 1:32
        start_value = 385 - 64;
        end_value = 8064;
            for n = 1:115
                row=row+1;
                segment_start = start_value + 64*n;
                segment_end = segment_start + 383;
                PLV_new(row,1:384)=Data(k,segment_start:segment_end);
            end
        end
    end
   
end
    
      %{  
for k=1:32
            for m=385:64:8065
                row=row+1;
                if m==8061
                    m=8060;
                end
                PLV_new(row,1:384)=Data(k,m:m+384);
                i
            end
        end
    end
    %}
    %{
    for k = 1:32
        start_value = 385 - 64
        end_value = 8064
        for n = 1:115
            segment_start = start_value + 64*n
            segment_end = start_value + 384
        end
    end
    %}

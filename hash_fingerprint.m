function H=hash_fingerprint(H,length,myfile)
%求平均值
[row,column]=size(H{1});
IM=zeros(row,column);
for k=1:length
    IM=IM+double(H{k});
end

IM_mean=IM/length;
figure('NumberTitle', 'off', 'name', '多时相多波段平均'),imshow(IM_mean,[]); 
%hash算法
for l=1:length
    for i=1:row
        for j=1:column
        if H{l}(i,j)>=IM_mean(i,j)
            H{l}(i,j)=1;
        else
           H{l}(i,j)=0;
        end
    end
    end
    ll=mat2str(l);
    figureName=strcat('hash指纹_',ll);
    %figure('NumberTitle', 'off', 'Name', figureName),imshow(H{l});
end
fprintf('Hash指纹计算完成！\n');
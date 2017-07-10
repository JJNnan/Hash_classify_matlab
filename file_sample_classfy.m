%样品点比较hash指纹，计算匹配度
function sampleResult=file_sample_classfy(S,I,lengthsample,lengthfile,mysample)
for l=1:lengthsample
    [row,column]=size(I{l});
    result=zeros(row,column);
    [row_s,column_s]=size(S{l});
    num=0;
    for i=1:row_s
        for j=1:column_s
            if S{l}(i,j)>=1
                 num=num+1;
                classfy=zeros(row,column);
                for k=1:lengthfile
                    if I{k}(i,j)>0
                        temp=I{k};
                    else
                        temp=double(~I{k});
                    end
                     classfy=classfy+temp;
                end
                
                result=result+classfy;
            end
            
        end
    end
    sampleResult{l}=result/num;
end
for k=1:lengthsample
    figure2Name=strcat('样品提取结果—',mysample(k).name);
    figure('NumberTitle', 'off', 'name',figure2Name),imshow(sampleResult{k},[]); 
end
fprintf('各样品分类计算完成！\n');
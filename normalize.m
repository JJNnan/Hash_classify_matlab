%归一化
%将灰度图片归一化
function M=normalize(M,length)
for i=1:length
    max_p=max(max(M{i}));
    min_p=min(min(M{i}));
    y=double((M{i}-min_p)/(max_p-min_p));
    M{i}=y;
end
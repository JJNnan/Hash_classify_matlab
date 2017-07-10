%读取samples文件夹下的所有样点
%参数为cell保存图片，lengthsample保存样品点
function [lengthsample,S,mysample]=readsample()
mysample=dir('.\\samples\*.tif');
lengthsample=length(mysample);
for j=1:lengthsample
    sampleName=strcat('.//samples/',mysample(j).name);
    sam=imread(sampleName);
    S{j}=double(sam);
end
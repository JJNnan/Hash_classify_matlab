%��ȡsamples�ļ����µ���������
%����Ϊcell����ͼƬ��lengthsample������Ʒ��
function [lengthsample,S,mysample]=readsample()
mysample=dir('.\\samples\*.tif');
lengthsample=length(mysample);
for j=1:lengthsample
    sampleName=strcat('.//samples/',mysample(j).name);
    sam=imread(sampleName);
    S{j}=double(sam);
end
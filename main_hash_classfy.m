%function main_hash_classfy()
clear all;
[lengthfile,I,myfile]=readfile();
[lengthsample,S,mysample]=readsample();
N=input('是否归一化处理图像(1是/0否)？\n');
if N==1
    I=normalize(I,lengthfile);
end
I=hash_fingerprint(I,lengthfile,myfile);
sampleResult=file_sample_classfy(S,I,lengthsample,lengthfile,mysample);
classfyResult=classfy(I,myfile,lengthsample,sampleResult);


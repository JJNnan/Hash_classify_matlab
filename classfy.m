function classfyResult=classfy(I,myfile,lengthsample,sampleResult)
%��ͬ��Ʒ��ƥ������򣬵õ�������
[row,column]=size(I{1});
classfyResult=zeros(row,column);
max_ij=[];
for i=1:row
    for j=1:column
        for l=1:lengthsample
            max_ij(l)=sampleResult{l}(i,j);
        end
        [max_sample,p]=max(max_ij);
        classfyResult(i,j)=p;
    end
end
figure('NumberTitle', 'off', 'name','Hash������'),imshow(classfyResult,[]);
fprintf('�����������ɣ�\n');
dlmwrite('Result.txt',classfyResult);
fprintf('�����Result.txt�ļ���\n');
%������envi�ļ�
%����1��
%----------------------------------
%fileENVI = fopen('Result','wb');
%fwrite(fileENVI,classfyResult','bit16');
%fclose(fileENVI);
%---------------------------
%����2��
enviwrite(classfyResult,'Result');
fprintf('���ENVI�ļ�������ɣ�\n');
%imshow(resultData,[]);

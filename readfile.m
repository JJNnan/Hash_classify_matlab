%��ȡimage�ļ����µ�����ͼƬ
%����Ϊcell����ͼƬ��lengthfile�����ļ���
function [lengthfile,I,myfile]=readfile()
myfile=dir('.\\image\*.hdr');
lengthimage=length(myfile);
for j=1:lengthimage
     imageName=strcat('.//image/',myfile(j).name);
     imageName(end-3:end)=[];
    [image,p,t,b] = freadenvi(imageName);
    %l=p(3);
    for l=1:p(3)
        im=image(:,:,l);
        k=(j-1)*p(3)+l;
        I{k}=double(im);
    end
    lengthfile=lengthimage*p(3);
end
%���Ƶ�һ�������ļ���hdrͷ�ļ���Ϊ����ļ�ͷ�ļ�
%inputfileHdr=strcat('.//image/',myfile(1).name);
%copyfile(inputfileHdr,'.//Result.HDR');
%-----------------------------------------------
%��дenviwrite������ʵ��envi�ļ�д�룬����ͷ�ļ�

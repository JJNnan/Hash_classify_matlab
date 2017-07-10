%读取image文件夹下的所有图片
%参数为cell保存图片，lengthfile保存文件数
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
%复制第一个输入文件的hdr头文件作为输出文件头文件
%inputfileHdr=strcat('.//image/',myfile(1).name);
%copyfile(inputfileHdr,'.//Result.HDR');
%-----------------------------------------------
%重写enviwrite函数，实现envi文件写入，包含头文件

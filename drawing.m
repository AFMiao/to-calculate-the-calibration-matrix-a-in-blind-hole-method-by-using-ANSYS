clear
clc

x = 0.05:0.05:1;

fid_EP1 = fopen('EP1.dat','r');
EP1 = fscanf(fid_EP1,'%f');
fid_EP3 = fopen('EP3.dat','r');
EP3 = fscanf(fid_EP3,'%f');
fclose('all');  % 关闭所有文件

p = plot(x,EP1,"r-o",x,EP3,"b-o");
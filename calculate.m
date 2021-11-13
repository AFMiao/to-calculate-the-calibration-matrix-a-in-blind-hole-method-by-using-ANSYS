clear
clc

% 打开并写入各写有数组数据的文件
fid_EP1 = fopen('EP1.dat','r');
EP1 = fscanf(fid_EP1,'%f',[20 20]);
EP1 = EP1';
fid_EP3 = fopen('EP3.dat','r');
EP3 = fscanf(fid_EP3,'%f',[20 20]);
EP3 = EP3';

fclose('all');  % 关闭所有文件

% 计算校准矩阵a
A = ((210E5)/1.3) * ((EP1 + EP3) / 100);

% 创建一个名为a.dat的文件, 将计算结果写入
TEMP = A';
fid_a = fopen('a.dat','w');
fprintf(fid_a,'%d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d\n',TEMP);
fclose(fid_a);  % 关闭a.dat文件
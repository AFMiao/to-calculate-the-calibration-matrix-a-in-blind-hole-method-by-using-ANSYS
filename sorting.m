clear
clc

% 打开并写入各写有数组数据的文件
fid_NE = fopen('NE.dat','r');
NE = fscanf(fid_NE,'%f');
fid_EX = fopen('EX.dat','r');
EX = fscanf(fid_EX,'%f');
fid_EY = fopen('EY.dat','r');
EY = fscanf(fid_EY,'%f');
fid_EZ = fopen('EZ.dat','r');
EZ = fscanf(fid_EZ,'%f');
fclose('all');  % 关闭所有文件

% 将所有数组写入到一个矩阵内
CACHE = [NE EX EY EZ];

% 按照"先z大的,后x小的,再y小的"的顺序排序
EORDER = sortrows(CACHE,[4,2,3],{'descend' 'ascend' 'ascend'});

% 提取出矩阵的第一列数据
TEMP = EORDER(:,1);

% 创建一个名为EORDER.dat的文件, 并将排序结果写入
fid_EORDER = fopen('EORDER.dat','w');
fprintf(fid_EORDER,'%d\n',TEMP);
fclose(fid_EORDER);  % 关闭EORDER.dat文件
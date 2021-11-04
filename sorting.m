clear
clc

% �򿪲�д���д���������ݵ��ļ�
fid_NE = fopen('NE.dat','r');
NE = fscanf(fid_NE,'%f');
fid_EX = fopen('EX.dat','r');
EX = fscanf(fid_EX,'%f');
fid_EY = fopen('EY.dat','r');
EY = fscanf(fid_EY,'%f');
fid_EZ = fopen('EZ.dat','r');
EZ = fscanf(fid_EZ,'%f');
fclose('all');  % �ر������ļ�

% ����������д�뵽һ��������
CACHE = [NE EX EY EZ];

% ����"��z���,��xС��,��yС��"��˳������
EORDER = sortrows(CACHE,[4,2,3],{'descend' 'ascend' 'ascend'});

% ��ȡ������ĵ�һ������
TEMP = EORDER(:,1);

% ����һ����ΪEORDER.dat���ļ�, ����������д��
fid_EORDER = fopen('EORDER.dat','w');
fprintf(fid_EORDER,'%d\n',TEMP);
fclose(fid_EORDER);  % �ر�EORDER.dat�ļ�
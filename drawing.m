clear
clc

x = 0.05:0.05:1;

fid_EP1 = fopen('EP1.dat','r');
EP1 = fscanf(fid_EP1,'%f');
fid_EP3 = fopen('EP3.dat','r');
EP3 = fscanf(fid_EP3,'%f');
fclose('all');  % 关闭所有文件

p = plot(x,EP1,"r-o",x,EP3,"b--o");
p(1).LineWidth = 1;
p(2).LineWidth = 1;
xlim([0 1.05]);
xticks(0.05:0.05:1);
xlabel('Hole Depth / mm');
ylabel('Relieved Strain');
txt = legend({'$\varepsilon_1$','$\varepsilon_3$'},'Location','best');
set(txt, 'Interpreter', 'latex');
legend('boxoff');
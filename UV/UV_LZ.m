clear
clc
close all;

data = readmatrix("LZ-1.xls");
lz_wavenum = data(:,2);
lz_Absorption = data(:,3);
data = readmatrix("LZ-2.xls");
lz_Absorption = lz_Absorption + data(:,3);
data = readmatrix("LZ-3.xls");
lz_Absorption = lz_Absorption + data(:,3);
lz_Absorption = lz_Absorption/3;

data = readmatrix("WZ-1.xls");
wz_wavenum = data(:,2);
wz_Absorption = data(:,3);
data = readmatrix("WZ-2.xls");
wz_Absorption = wz_Absorption + data(:,3);
data = readmatrix("WZ-3.xls");
wz_Absorption = wz_Absorption + data(:,3);
wz_Absorption = wz_Absorption/3;

figure(1)
p1 = plot(lz_wavenum,lz_Absorption,'LineWidth',2);
hold on;
p2 = plot(wz_wavenum,wz_Absorption,'LineWidth',2);

[p,~] = find(wz_wavenum == 280);
% line([280,280],[0,wz_Absorption(p)],'Linestyle','--','color','r')
hold off;
set(gca,'fontsize',20,'FontName','Times New Roman','TickDir','out','box','off','linewidth',1.75)
xlabel('Wavelength(nm)','fontsize',20,'FontName','Times New Roman');
ylabel('Absorbance(A)','fontsize',20,'FontName','Times New Roman');
% height = 2.5;
% text_height = height-0.01;
% 
xlim([190 600])
% 
legend([p1, p2],{'低温花生粕','中温花生粕'},'fontsize',20,'FontName','<宋体>','Location','northeast','Interpreter','none')
% title('Secondary Structure of Hot-pressed Peanut Protein','fontsize',36);
% 
% 

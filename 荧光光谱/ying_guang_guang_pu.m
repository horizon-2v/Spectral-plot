clear
clc
close all;

data = readmatrix("冷榨.xlsx",'Sheet','数据处理');
lz_wavelength = data(:,1);
lz_flourescence = data(:,5);
data = readmatrix("温榨-荧光光谱.xlsx",'Sheet','Sheet3');
wz_wavelength = data(:,1);
wz_flourescence = data(:,6);

% left = find(lz_wavelength == 300);
% right = find(lz_wavelength == 400);
% 
% lz_wavelength = lz_wavelength(left:right);
% lz_flourescence = lz_flourescence(left:right);
% 
% left = find(wz_wavelength == 300);
% right = find(wz_wavelength == 400);
% 
% wz_wavelength = wz_wavelength(left:right);
% wz_flourescence = wz_flourescence(left:right);

[lz_max,lz_peak] = max(lz_flourescence);
lz_pos = lz_wavelength(lz_peak);

[wz_max,wz_peak] = max(wz_flourescence);
wz_pos = wz_wavelength(wz_peak);

figure(1)
p1 = plot(lz_wavelength,lz_flourescence,'LineWidth',2);
hold on;
p2 = plot(wz_wavelength,wz_flourescence,'LineWidth',2);
% line([lz_pos,lz_pos],[0,lz_max],'Linestyle','--')
% line([wz_pos,wz_pos],[0,wz_max],'Linestyle','--','color','r')
hold off;
set(gca,'fontsize',20,'FontName','Times New Roman','TickDir','out','box','off','linewidth',1.75)
xlabel('Wavelength(nm)','fontsize',20);
ylabel('Flourescence intensity(A.U)','fontsize',20);
% height = 2.5;
% text_height = height-0.01;
% 
xlim([295 500])
ylim([0 5000]);
% 
legend([p1, p2],{'低温花生粕','中温花生粕'},'fontsize',20,'FontName','<宋体>','Location','northeast','Interpreter','none')
% title('Secondary Structure of Hot-pressed Peanut Protein','fontsize',36);
% 
% 

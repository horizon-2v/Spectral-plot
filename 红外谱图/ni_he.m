close all;
clear;
clc;

dataDir = "D:\code\workspace\spectral_plot\画图数据\红外\LZ";

data = flip(readmatrix(fullfile(dataDir, "OMINC冷榨1红外谱图.csv")));
cold_wavenum = data(:,1);
cold_one = data(:,2);
cold_all = data;

data = flip(readmatrix(fullfile(dataDir, "OMINC冷榨2红外谱图.csv")));
cold_two = data(:,2);
cold_all = cat(1,cold_all,data);

data = flip(readmatrix(fullfile(dataDir, "OMINC冷榨3红外谱图.csv")));
cold_three = data(:,2);
cold_all = cat(1,cold_all,data);

cold_wavenum_point = cold_all(:,1);
cold_absortbance = cold_all(:,2);

[cold_result,~] = createFit(cold_wavenum_point, cold_absortbance);

cold = cold_result(cold_wavenum);

data = flip(readmatrix(fullfile(dataDir, "常规花生粕1-1.csv")));
normal_wavenum = data(:,1);
normal_one = data(:,2);
normal_all = data;

data = flip(readmatrix(fullfile(dataDir, "常规花生粕2-1.csv")));
normal_two = data(:,2);
normal_all = cat(1,normal_all,data);

data = flip(readmatrix(fullfile(dataDir, "常规花生粕3-1.csv")));
normal_three = data(:,2);
normal_all = cat(1,normal_all,data);

normal_wavenum_point = normal_all(:,1);
normal_absortbance = normal_all(:,2);

[normal_result, ~] = createFit(normal_wavenum_point, normal_absortbance);
normal = normal_result(normal_wavenum) * 2.59;

figure(1)
plot(cold_wavenum,cold,'LineWidth',2)
hold on;
plot(normal_wavenum,normal,'LineWidth',2)
hold off
set(gca,'XDir','reverse','Box','off','TickDir','out')
% set(gca,'fontsize',20,'FontName','Times New Roman','Box','off','TickDir','out')
legend({'冷榨花生粕','常规花生粕'}, 'FontName', '宋体', 'Box', 'off')
xlabel('Wavenumbers (cm^-^1)');
ylabel('Absorbance');
xlim([400 4000])
ylim([-0.1 1])
set(gca,'fontsize',20,'FontName','Times New Roman','TickDir','out','box','off','linewidth',1.75)



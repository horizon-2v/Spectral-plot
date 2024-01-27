close all;
clear;
clc;

<<<<<<< HEAD:红外谱图/ni_he.m
dataDir = "D:\code\workspace\spectral_plot\画图数据\红外";

data = flip(readmatrix(fullfile(dataDir, "OMINC冷榨1红外谱图.csv")));
=======
data = flip(readmatrix("OMINC��ե1������ͼ.csv"));
>>>>>>> cd674fe4245169a564f0c3aeb88eb366836f46aa:4000-400/ni_he.m
cold_wavenum = data(:,1);
cold_one = data(:,2);
cold_all = data;

<<<<<<< HEAD:红外谱图/ni_he.m
data = flip(readmatrix(fullfile(dataDir, "OMINC冷榨2红外谱图.csv")));
cold_two = data(:,2);
cold_all = cat(1,cold_all,data);

data = flip(readmatrix(fullfile(dataDir, "OMINC冷榨3红外谱图.csv")));
=======
data = flip(readmatrix("OMINC��ե2������ͼ.csv"));
cold_two = data(:,2);
cold_all = cat(1,cold_all,data);

data = flip(readmatrix("OMINC��ե3������ͼ.csv"));
>>>>>>> cd674fe4245169a564f0c3aeb88eb366836f46aa:4000-400/ni_he.m
cold_three = data(:,2);
cold_all = cat(1,cold_all,data);

cold_wavenum_point = cold_all(:,1);
cold_absortbance = cold_all(:,2);

[cold_result,~] = createFit(cold_wavenum_point, cold_absortbance);
<<<<<<< HEAD:红外谱图/ni_he.m
cold = cold_result(cold_wavenum);

data = flip(readmatrix(fullfile(dataDir, "常规花生粕1-1.csv")));
=======
cold = cold_result(cold_wavenum) + 0.7;

data = flip(readmatrix("OMINC����1������ͼ.csv"));
>>>>>>> cd674fe4245169a564f0c3aeb88eb366836f46aa:4000-400/ni_he.m
normal_wavenum = data(:,1);
normal_one = data(:,2);
normal_all = data;

<<<<<<< HEAD:红外谱图/ni_he.m
data = flip(readmatrix(fullfile(dataDir, "常规花生粕1-1.csv")));
normal_two = data(:,2);
normal_all = cat(1,normal_all,data);

data = flip(readmatrix(fullfile(dataDir, "常规花生粕1-1.csv")));
=======
data = flip(readmatrix("OMINC����2������ͼ.csv"));
normal_two = data(:,2);
normal_all = cat(1,normal_all,data);

data = flip(readmatrix("OMINC����3������ͼ.csv"));
>>>>>>> cd674fe4245169a564f0c3aeb88eb366836f46aa:4000-400/ni_he.m
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
line((1600:1:1700),1.65*ones(101),'color','k','linewidth',2);
line(1600*ones(51),(1.63:0.0008:1.67),'color','k','linewidth',2);
line(1700*ones(51),(1.63:0.0008:1.67),'color','k','linewidth',2);
hold off
<<<<<<< HEAD:红外谱图/ni_he.m
set(gca,'XDir','reverse','Box','off','TickDir','out')%对X方向反转
set(gca,'fontsize',20,'FontName','宋体','Box','off','TickDir','out')
legend_box = legend({'冷榨花生粕','常规花生粕'});
set(legend_box,'box', 'off');
xlabel('Wavenumbers (cm^-^1)');
ylabel('Absorbance');
ylim([-0.2 1.2])
xlim([400 4000])
=======
set(gca,'XDir','reverse','yticklabel',[],'ytick',[],'Box','off','TickDir','out')
% set(gca,'fontsize',20,'FontName','Times New Roman','Box','off','TickDir','out')
legend({'Cold-pressed','Warm-pressed'})
xlabel('Wavenumbers (cm^-^1)','fontsize',20);
ylabel('Absorbance','fontsize',20);
xlim([400 4000])
ylim([-0.1 1.8])

set(gca,'fontsize',20,'FontName','Times New Roman','TickDir','out','box','off','linewidth',1.75)
>>>>>>> cd674fe4245169a564f0c3aeb88eb366836f46aa:4000-400/ni_he.m



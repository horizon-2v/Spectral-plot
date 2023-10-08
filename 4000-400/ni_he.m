close all;
clear;
clc;

data = flip(readmatrix("OMINC冷榨1红外谱图.csv"));
cold_wavenum = data(:,1);
cold_one = data(:,2);
cold_all = data;

data = flip(readmatrix("OMINC冷榨2红外谱图.csv"));
cold_two = data(:,2);
cold_all = cat(1,cold_all,data);

data = flip(readmatrix("OMINC冷榨3红外谱图.csv"));
cold_three = data(:,2);
cold_all = cat(1,cold_all,data);

cold_wavenum_point = cold_all(:,1);
cold_absortbance = cold_all(:,2);

[cold_result,~] = createFit(cold_wavenum_point, cold_absortbance);
cold = cold_result(cold_wavenum) + 1.2;

data = flip(readmatrix("OMINC常规1红外谱图.csv"));
normal_wavenum = data(:,1);
normal_one = data(:,2);
normal_all = data;

data = flip(readmatrix("OMINC常规2红外谱图.csv"));
normal_two = data(:,2);
normal_all = cat(1,normal_all,data);

data = flip(readmatrix("OMINC常规3红外谱图.csv"));
normal_three = data(:,2);
normal_all = cat(1,normal_all,data);

normal_wavenum_point = normal_all(:,1);
normal_absortbance = normal_all(:,2);

[normal_result, ~] = createFit(normal_wavenum_point, normal_absortbance);
normal = normal_result(normal_wavenum);

figure(1)
plot(cold_wavenum,cold,'LineWidth',2)
hold on;
plot(normal_wavenum,normal,'LineWidth',2)
hold off
set(gca,'XDir','reverse','yticklabel',[],'ytick',[],'Box','off','TickDir','out')%对X方向反转
% set(gca,'fontsize',20,'FontName','Times New Roman','Box','off','TickDir','out')
legend({'冷榨','常规'})
xlabel('Wavenumbers (cm^-^1)');
ylabel('Absorbance');
ylim([-0.1 2.2])



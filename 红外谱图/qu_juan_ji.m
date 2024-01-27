close all;
clear;
clc;

data = flip(readmatrix("常规1去卷积调整.csv"));
normal_wavenum = data(:,1);
normal_one = data(:,2);
normal_all = data;

data = flip(readmatrix("常规2去卷积调整.csv"));
normal_two = data(:,2);
normal_all = cat(1,normal_all,data);

data = flip(readmatrix("常规3去卷积调整.csv"));
normal_three = data(:,2);
normal_all = cat(1,normal_all,data);

normal_wavenum_point = normal_all(:,1);
normal_absortbance = normal_all(:,2);

[normal_result, ~] = createFit(normal_wavenum_point, normal_absortbance);
normal = normal_result(normal_wavenum);

figure(1)
plot(normal_wavenum,normal,'LineWidth',2)
% hold on;
% plot(normal_wavenum,normal,'LineWidth',2)
% hold off
set(gca,'XDir','reverse','yticklabel',[],'ytick',[],'Box','off','TickDir','out')
set(gca,'fontsize',20,'FontName','Times New Roman','Box','off','TickDir','out')
% legend({'冷榨','常规'})
xlabel('Wavenumbers (cm^-^1)');
ylabel('Absorbance');
xlim([400 4000])
% ylim([-0.1 2.2])



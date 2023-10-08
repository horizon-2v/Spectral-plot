close all;
clear;
clc;

data = flip(readmatrix("OMINC¿‰’•1∫ÏÕ‚∆◊Õº.csv"));
cold_wavenum = data(:,1);
cold_one = data(:,2);
cold_all = data;

data = flip(readmatrix("OMINC¿‰’•2∫ÏÕ‚∆◊Õº.csv"));
cold_two = data(:,2);
cold_all = cat(1,cold_all,data);

data = flip(readmatrix("OMINC¿‰’•3∫ÏÕ‚∆◊Õº.csv"));
cold_three = data(:,2);
cold_all = cat(1,cold_all,data);

cold_wavenum_point = cold_all(:,1);
cold_absortbance = cold_all(:,2);

[cold_result,~] = createFit(cold_wavenum_point, cold_absortbance);
cold = cold_result(cold_wavenum) + 0.7;

data = flip(readmatrix("OMINC≥£πÊ1∫ÏÕ‚∆◊Õº.csv"));
normal_wavenum = data(:,1);
normal_one = data(:,2);
normal_all = data;

data = flip(readmatrix("OMINC≥£πÊ2∫ÏÕ‚∆◊Õº.csv"));
normal_two = data(:,2);
normal_all = cat(1,normal_all,data);

data = flip(readmatrix("OMINC≥£πÊ3∫ÏÕ‚∆◊Õº.csv"));
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
line((1600:1:1700),1.65*ones(101),'color','k','linewidth',2);
line(1600*ones(51),(1.63:0.0008:1.67),'color','k','linewidth',2);
line(1700*ones(51),(1.63:0.0008:1.67),'color','k','linewidth',2);
hold off
set(gca,'XDir','reverse','yticklabel',[],'ytick',[],'Box','off','TickDir','out')
% set(gca,'fontsize',20,'FontName','Times New Roman','Box','off','TickDir','out')
legend({'Cold-pressed','Warm-pressed'})
xlabel('Wavenumbers (cm^-^1)','fontsize',20);
ylabel('Absorbance','fontsize',20);
xlim([400 4000])
ylim([-0.1 1.8])

set(gca,'fontsize',20,'FontName','Times New Roman','TickDir','out','box','off','linewidth',1.75)



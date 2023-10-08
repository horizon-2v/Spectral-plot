close all;
clear;
clc;

% data = readmatrix("ExpAll_冷榨1.csv");
% temp_one = data(244:end,1);
% DSC_one = data(244:end,3);
% data = readmatrix("ExpAll_冷榨2.csv");
% temp_two = data(289:end,1);
% DSC_two = data(289:end,3);
% data = readmatrix("ExpAll_冷榨3.csv");
% temp_three = data(293:end,1);
% DSC_three = data(293:end,3);
% 
% temp_point = cat(1,temp_one,temp_two,temp_three);
% DSC_point = cat(1,DSC_one,DSC_two,DSC_three);
% 
% figure(1)
% plot(temp_one,DSC_one);
% hold on
% plot(temp_two,DSC_two);
% plot(temp_three,DSC_three);
% legend('1','2','3')

data_normal = readmatrix("ExpAll_常规3.csv");
temp_normal = data_normal(:,1);
DSC_normal = data_normal(:,3);

data = readmatrix("ExpAll_冷榨3.csv");
temp_cold = data(:,1);
DSC_cold = data(:,3);

figure(1)
plot(temp_normal,DSC_normal,'LineWidth',2,'color','#D95319');
set(gca,'fontsize',20,'Box','off','FontName','<宋体>','TickDir','out')
xlabel('温度/℃','fontsize',20);
ylabel('DSC/(mW/mg)','fontsize',20,'FontName','Times New Roman');

figure(2)
plot(temp_cold,DSC_cold,'LineWidth',2);
set(gca,'fontsize',20,'Box','off','FontName','<宋体>','TickDir','out')
xlabel('温度/℃','fontsize',20);
ylabel('DSC/(mW/mg)','fontsize',20,'FontName','Times New Roman');

close all;
clear;
clc;

data = readmatrix("ExpAll_冷榨3.csv");
temp = data(:,1);
DSC = data(:,3);

figure(1)
plot(temp,DSC,'LineWidth',2);
set(gca,'fontsize',20,'Box','off','TickDir','out')
xlabel('温度/℃','fontsize',20);
ylabel('DSC/(mW/mg)','fontsize',20);

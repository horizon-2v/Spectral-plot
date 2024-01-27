clear
clc
close all;

data = readmatrix("ÀäÕ¥1ºìÍâÆ×Í¼.xlsx");
X_Generated = data(:,3);
Y_Generated = data(:,4);
Peak1 = data(:,5);
Peak2 = data(:,6);
Peak3 = data(:,7);
Peak4 = data(:,8);
Peak5 = data(:,9);
Peak6 = data(:,10);
Peak7 = data(:,11);

data = readmatrix("ÀäÕ¥2ºìÍâÆ×Í¼.xlsx");
Y_Generated = Y_Generated + data(:,4);
Peak1 = Peak1 + data(:,5);
Peak2 = Peak2 + data(:,6);
Peak3 = Peak3 + data(:,7);
Peak4 = Peak4 + data(:,8);
Peak5 = Peak5 + data(:,9);
Peak6 = Peak6 + data(:,10);
Peak7 = Peak7 + data(:,11);

data = readmatrix("ÀäÕ¥3ºìÍâÆ×Í¼.xlsx");
Y_Generated = Y_Generated + data(:,4);
Peak1 = Peak1 + data(:,5);
Peak2 = Peak2 + data(:,6);
Peak3 = Peak3 + data(:,7);
Peak4 = Peak4 + data(:,8);
Peak5 = Peak5 + data(:,9);
Peak6 = Peak6 + data(:,10);
Peak7 = Peak7 + data(:,11);

Y_Generated = Y_Generated/3;
Peak1 = Peak1/3;
Peak2 = Peak2/3;
Peak3 = Peak3/3;
Peak4 = Peak4/3;
Peak5 = Peak5/3;
Peak6 = Peak6/3;
Peak7 = Peak7/3;

height = 0.9;
text_height = height-0.01;

figure(1)
p1 = plot(X_Generated,Y_Generated,'LineWidth',2);
hold on
p2 = plot(X_Generated,Peak1,'LineWidth',2);
p3 = plot(X_Generated,Peak2,'LineWidth',2);
p4 = plot(X_Generated,Peak3,'LineWidth',2);
p5 = plot(X_Generated, Peak4,'LineWidth',2);
p6 = plot(X_Generated, Peak5,'LineWidth',2);
p7 = plot(X_Generated, Peak6,'LineWidth',2);
p8 = plot(X_Generated, Peak7,'LineWidth',2);
hold off
set(gca,'fontsize',20,'FontName','Times New Roman','TickDir','out','box','off','linewidth',1.75)
xlabel('Wavenumbers (cm^-^1)','fontsize',20);
ylabel('Absorption peak (A)','fontsize',20);
ylim([0 height])

% legend([p1, p2, p3, p4, p5, p6, p7, p8],{'Y_Generated','Peak1','Peak2','Peak3','Peak4','Peak5','Peak6','Peak7'},'fontsize',20,'Location','northwest','Interpreter','none')
title('Secondary Structure of Cold-pressed Peanut Protein','fontsize',36);



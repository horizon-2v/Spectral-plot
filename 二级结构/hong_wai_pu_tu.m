clear
clc
close all;

data = readmatrix("常规1红外谱图.xlsx");
X_Generated = data(:,3);
Y_Generated = data(:,4);
Peak1 = data(:,5);
Peak2 = data(:,6);
Peak3 = data(:,7);
Peak4 = data(:,8);
Peak5 = data(:,9);

data = readmatrix("常规2红外谱图.xlsx");
Y_Generated = (Y_Generated + data(:,4))/2;
Peak1 = (Peak1 + data(:,5))/2;
Peak2 = (Peak2 + data(:,6))/2;
Peak3 = (Peak3 + data(:,7))/2;
Peak4 = (Peak4 + data(:,8))/2;
Peak5 = (Peak5 + data(:,9))/2;

height = 2.2;
text_height = height-0.01;

figure(1)
p1 = plot(X_Generated,Y_Generated,'LineWidth',2);
hold on
p2 = plot(X_Generated,Peak1,'LineWidth',2);
p3 = plot(X_Generated,Peak2,'LineWidth',2);
p4 = plot(X_Generated,Peak3,'LineWidth',2);
p5 = plot(X_Generated, Peak4,'LineWidth',2);
p6 = plot(X_Generated, Peak5,'LineWidth',2);
hold off
set(gca,'fontsize',20,'FontName','Times New Roman','TickDir','out','box','off','linewidth',1.75)
xlabel('Wavenumbers (cm^-^1)','fontsize',20);
ylabel('Absorption peak (A)','fontsize',20);
ylim([0 height])

% legend([p1, p2, p3, p4, p5, p6],{'Y_Generated','Peak1','Peak2','Peak3','Peak4','Peak5'},'fontsize',20,'Location','northwest','Interpreter','none')
title('Secondary Structure of Hot-pressed Peanut Protein','fontsize',36);



clear
clc
close all;

data = readmatrix("冷榨1PF.xlsx");
X_Generated = data(:,1);
Y_Generated = data(:,2);
Peak1 = data(:,3);
Peak2 = data(:,4);
Peak3 = data(:,5);
Peak4 = data(:,6);
Peak5 = data(:,7);
Peak6 = data(:,8);

height = 0.3;
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
% line([1640,1640],[0,height],'linestyle','--','color','r','LineWidth',2);
% line([1650,1650],[0,height],'linestyle','--','color','r','LineWidth',2);
% line([1660,1660],[0,height],'linestyle','--','color','r','LineWidth',2);
% txt1 = 'β-sheet';
% txt2 = 'random coil';
% txt3 = 'α-helix';
% txt4 = 'β-turn';
% text(1616.8,text_height,txt1,'FontSize',20,'color','r')
% text(1640.4,text_height,txt2,'FontSize',20,'color','r')
% text(1652.3,text_height,txt3,'FontSize',20,'color','r')
% text(1678.1,text_height,txt4,'FontSize',20,'color','r')
set(gca,'fontsize',20,'FontName','Times New Roman','Box','off','TickDir','out')
ylim([0 height])
xlabel('Wavenumbers (cm^-^1)','fontsize',20);
ylabel('Absorption peak (A)','fontsize',20);
legend([p1, p2, p3, p4, p5, p6, p7],{'Y_Generated','Peak1','Peak2','Peak3','Peak4','Peak5','Peak6'},'fontsize',20,'Location','northwest','Interpreter','none')
title('Secondary Structure of Hot-Pressed Peanut Protein','fontsize',36);



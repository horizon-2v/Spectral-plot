close all;
clear;
clc;

dir_path = "D:\code\workspace\spectral_plot\画图数据\红外";
select_dir = ["INU", "PIM", "PPI", "PPI-INU", "UPIM", "UPPI-INU"];
% select_dir = ["PPI"];

for data_dir = select_dir
    [plot_x, plot_y] = data_fit(fullfile(dir_path, data_dir));
    if data_dir == "CG"
        plot_y = plot_y * 2.59;
    end
    plot(plot_x, plot_y,'linewidth',1.75);
    hold on
end
hold off

set(gca,'XDir','reverse','Box','off','TickDir','out')
legend(select_dir, 'FontName', '宋体', 'Box', 'off')
xlabel('Wavenumbers (cm^-^1)');
ylabel('Absorbance');
xlim([400 4000])
% ylim([-0.1 1])
set(gca,'fontsize',20,'FontName','Times New Roman','TickDir','out','box','off','linewidth',1.75)

function [wave_num, result] = data_fit(folder)
    file_class_list = dir(fullfile(folder, "*.csv"));
    file_list = {file_class_list.name};
    data_all = [];
    wave_num = [];
    for file_name = file_list
        data = flip(readmatrix(fullfile(folder,file_name)));
        wave_num = data(:,1);
        data_all = cat(1,data_all,data);
    end
    [fit_model,~] = createFit(data_all(:,1), data_all(:,2));
    result = fit_model(wave_num);
end
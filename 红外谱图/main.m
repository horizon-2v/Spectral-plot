close all;
clear;
clc;

dir_path = "D:\code\workspace\spectral_plot\画图数据\红外";
select_dir = ["PPI", "UPPI-INU", "PIM"];

for data_dir = select_dir
    [plot_x, plot_y] = data_fit(fullfile(dir_path, data_dir));
    if data_dir == "CG"
        plot_y = plot_y * 2.59;
    end
    if dir_path ~= "D:\code\workspace\spectral_plot\画图数据\红外"
        for i = 1:5
            plot_y = smooth(plot_y);
        end
    end
    plot(plot_x, plot_y,'linewidth',1.75);
    hold on
end
hold off

set(gca,'Box','off','TickDir','out')

if dir_path == "D:\code\workspace\spectral_plot\画图数据\红外"
    set(gca,'XDir','reverse')
end

legend(select_dir, 'FontName', 'Times New Roman', 'Box', 'off')
xlabel('Wavenumbers (cm^-^1)');
ylabel('Absorbance');
% xlim([240 500])
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
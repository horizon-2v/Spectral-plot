close all;
clear;
clc;

dir_path = "D:\code\workspace\spectral_plot\画图数据\红外\PPI";
[~, fit] = data_fit(dir_path);

data1 = flip(readmatrix(fullfile(dir_path, "花生分离蛋白1.csv")));
data2 = flip(readmatrix(fullfile(dir_path, "花生分离蛋白4.csv")));
data3 = flip(readmatrix(fullfile(dir_path, "花生分离蛋白7.csv")));

hold on
plot(data1(:,2));
plot(data2(:,2));
plot(data3(:,2));
plot(fit)
hold off


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
function [fitresult, gof] = createFit(wavenum_point, absortbance_point)
%CREATEFIT(WAVENUM_POINT,ABSORTBANCE_POINT)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : wavenum_point
%      Y Output: absortbance_point
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  另请参阅 FIT, CFIT, SFIT.

%  由 MATLAB 于 25-Apr-2023 14:40:53 自动生成


%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( wavenum_point, absortbance_point );

% Set up fittype and options.
ft = fittype( 'smoothingspline' );

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft );

% % Plot fit with data.
% figure( 'Name', 'untitled fit 1' );
% h = plot( fitresult, xData, yData );
% legend( h, 'absortbance_point vs. wavenum_point', 'untitled fit 1', 'Location', 'NorthEast', 'Interpreter', 'none' );
% % Label axes
% xlabel( 'wavenum_point', 'Interpreter', 'none' );
% ylabel( 'absortbance_point', 'Interpreter', 'none' );
% grid on



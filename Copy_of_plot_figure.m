clear all;
clc;

load('localization_err_optimal_2D.mat');
load('localization_err_2D.mat');

t = 50:1:869;
figure(1);
plot(t,location_err_2D,t,location_err_optimal_2D,'linewidth',2);
legend('The uniform deployment','The PSO-based optimal anchor deployment')
grid on;
xlabel('Track distance (m)');
ylabel('RMSE(m)');

set(gca,'LooseInset',get(gca,'TightInset'));

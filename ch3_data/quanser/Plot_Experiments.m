clear all;
clc;

load('plot_data.mat');

title('Experiments')
%subplot(2,1,1);
ref=0.6*ones(2501,1);
plot(positions_nr.time,ref,'--',...
positions_nr.time,positions_nr.signals.values(:,1),':',...
positions_e1.time,positions_e1.signals.values(:,1),...
positions_e2.time,positions_e2.signals.values(:,1),'LineWidth',2)
grid on
legend('Reference Position','No Rule','E1','E2')
ylabel('q_1 (rad)');
xlabel('Time (s)');
ylim([-0.02 1])

%subplot(2,1,2);
ref=0.8*ones(2501,1);
plot(positions_nr.time,ref,'--',...
positions_nr.time,positions_nr.signals.values(:,2),':',...
positions_e1.time,positions_e1.signals.values(:,2),...
positions_e2.time,positions_e2.signals.values(:,2),'LineWidth',2)
grid on
legend('Reference Position','No Rule','E1','E2')
ylabel('q_2 (rad)');
xlabel('Time (s)');
ylim([0 1.2])
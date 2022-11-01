%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                              %
% Plotting file for Planar Manipulator Dataset %
% Plotting n seconds of data                   %
%                                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%clear;
close all;
clc;
color1=1/255*[0,153,0];
%color2=1/255*[204,102,0];
color2='r';
%% 
%load('data/full11.mat') %critical
load('case4.mat') 
data_qA=data_ql;
data_qB=data_qm;

qd=[0.6 0.8];
[n,m]=size(data_qA.time);
refq1=qd(1)*ones(n,1);
refq2=qd(2)*ones(n,1);


subplot(2,1,1)
plot(data_qA.time,data_qA.signals.values(:,1), data_qA.time,data_qA.signals.values(:,2),'LineWidth',1.5)
hold;
plot(data_qB.time,data_qB.signals.values(:,1), data_qB.time,data_qB.signals.values(:,2),'LineWidth',1.5)

plot(data_qA.time,refq1,'--','Color',color1,'LineWidth',1.5);
plot(data_qA.time,refq2,'--','Color',color2,'LineWidth',1.5);
%legend('Link 1','Link 2','Joint 1','Joint 2','Reference for Link/Joint 1','Reference for Link/Joint 2','interpreter','latex');
grid on;
ylim([-0.1 1.2])
ylabel('Angular position (rad)','interpreter','latex');

grid on;
ylabel('Angular position (rad)','interpreter','latex');
xlabel({'Case 4'},'interpreter','latex');


%%
load('case5.mat') 
data_qA=data_ql;
data_qB=data_qm;

qd=[0.6 0.8];
[n,m]=size(data_qA.time);
refq1=qd(1)*ones(n,1);
refq2=qd(2)*ones(n,1);


subplot(2,1,2)
plot(data_qA.time,data_qA.signals.values(:,1), data_qA.time,data_qA.signals.values(:,2),'LineWidth',1.5)
hold;
plot(data_qB.time,data_qB.signals.values(:,1), data_qB.time,data_qB.signals.values(:,2),'LineWidth',1.5)

plot(data_qA.time,refq1,'--','Color',color1,'LineWidth',1.5);
plot(data_qA.time,refq2,'--','Color',color2,'LineWidth',1.5);
legend('$q_1$: Link 1','$q_2$: Link 2','$q_3$: Joint 1','$q_4$: Joint 2','Reference for $q_1$/$q_3$','Reference for $q_2$/$q_4$','interpreter','latex');
grid on;
ylim([-0.1 1.1])

grid on;
xlabel({'Case 5','Time (s)'},'interpreter','latex');
set(gcf,'renderer','Painters')
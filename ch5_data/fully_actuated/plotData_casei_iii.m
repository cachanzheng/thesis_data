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
color2=1/255*[204,102,0];

%% Embeded figure
close all;
subplot(3,1,1)
load('CaseI.mat') 
data_qA=data_ql;
qd=[0.6 0.8];
[n,m]=size(data_qA.time(1:2501));
refq1=qd(1)*ones(n,1);
refq2=qd(2)*ones(n,1);

plot(data_qA.time(1:2501),data_qA.signals.values(1:2501,1),'r', data_qA.time(1:2501),data_qA.signals.values(1:2501,2),'b','LineWidth',1.5)
hold;
plot(data_qA.time(1:2501),refq1,'--','Color',color1,'LineWidth',1.5);
plot(data_qA.time(1:2501),refq2,'--','Color',color2,'LineWidth',1.5);
grid on;
ylim([0 1.1])
xlim([0 5])
xlabel({'Case 1'},'interpreter','latex');

subplot(3,1,2)
load('CaseII.mat') 
data_qA=data_ql;
qd=[0.6 0.8];
[n,m]=size(data_qA.time(1:2501));
refq1=qd(1)*ones(n,1);
refq2=qd(2)*ones(n,1);

plot(data_qA.time(1:2501),data_qA.signals.values(1:2501,1),'r', data_qA.time(1:2501),data_qA.signals.values(1:2501,2),'b','LineWidth',1.5)
hold;
plot(data_qA.time(1:2501),refq1,'--','Color',color1,'LineWidth',1.5);
plot(data_qA.time(1:2501),refq2,'--','Color',color2,'LineWidth',1.5);
grid on;
ylim([0 0.85])
xlim([0 5])
xlabel({'Case 2'},'interpreter','latex');
ylabel('Angular position (rad)','interpreter','latex');
axes('Position',[.25 .45 .10 .10])
box on
plot(data_qA.time(1:2501),data_qA.signals.values(1:2501,1),'r', data_qA.time(1:2501),data_qA.signals.values(1:2501,2),'b','LineWidth',1.5)
hold
plot(data_qA.time(1:2501),refq1,'--','Color',color1,'LineWidth',1.5);
grid
ylim([0.5 0.62])
xlim([0.25 1])

g=subplot(3,1,3)
load('CaseIII.mat') 
data_qA=data_ql;
qd=[0.6 0.8];
[n,m]=size(data_qA.time(1:2501));
refq1=qd(1)*ones(n,1);
refq2=qd(2)*ones(n,1);

plot(data_qA.time(1:2501),data_qA.signals.values(1:2501,1),'r', data_qA.time(1:2501),data_qA.signals.values(1:2501,2),'b','LineWidth',1.5)
hold;
plot(data_qA.time(1:2501),refq1,'--','Color',color1,'LineWidth',1.5);
plot(data_qA.time(1:2501),refq2,'--','Color',color2,'LineWidth',1.5);
grid on;
ylim([0 0.85])
xlim([0 5])
xlabel({'Case 3','Time (s)'},'interpreter','latex');
legend('$q_1$: Link 1','$q_2$: Link 2','Reference for $q_1$','Reference for $q_2$','interpreter','latex');

%axes('Position',[.76 .75 .13 .13])
axes('Position',[.25 .15 .10 .10])
box on
plot(data_qA.time(1:2501),data_qA.signals.values(1:2501,1),'r', data_qA.time(1:2501),data_qA.signals.values(1:2501,2),'b','LineWidth',1.5)
hold
plot(data_qA.time(1:2501),refq1,'--','Color',color1,'LineWidth',1.5);
grid
ylim([0.59 0.625])
xlim([0.25 1])

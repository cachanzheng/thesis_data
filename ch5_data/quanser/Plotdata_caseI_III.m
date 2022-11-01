close all;
seconds=2501;
r1=0.6;
load('caseI.mat');
ref1=[r1*ones(size(data_ql.time(1:seconds)))];
subplot(2,1,1);
%load('pi1.mat');
plot(data_ql.time(1:seconds),ref1,'--','LineWidth',1.5);

%plot(data_ql.time(1:seconds),data_ql.signals.values(1:seconds,1),'LineWidth',1.5);
hold;
load('caseI.mat');
plot(data_ql.time(1:seconds),data_ql.signals.values(1:seconds,1),'LineWidth',1.5);
load('caseII.mat');
plot(data_ql.time(1:seconds),data_ql.signals.values(1:seconds,1),'LineWidth',1.5);
load('caseIII.mat');
plot(data_ql.time(1:seconds),data_ql.signals.values(1:seconds,1),'LineWidth',1.5);
ylim([-0.03;0.75]);

grid;

r2=0.8;
load('caseI.mat');
ref2=[r2*ones(size(data_ql.time(1:seconds)))];
subplot(2,1,2);
%load('pi1.mat');
plot(data_ql.time(1:seconds),ref2,'--','LineWidth',1.5);
%plot(data_ql.time(1:seconds),data_ql.signals.values(1:seconds,2),'LineWidth',1.5);
hold;

load('caseI.mat');

plot(data_ql.time(1:seconds),data_ql.signals.values(1:seconds,2),'LineWidth',1.5);
load('caseII.mat');
plot(data_ql.time(1:seconds),data_ql.signals.values(1:seconds,2),'LineWidth',1.5);
ylim([-0.03;0.85]);
load('caseIII.mat');
plot(data_ql.time(1:seconds),data_ql.signals.values(1:seconds,2),'LineWidth',1.5);
xlabel('Time (s)','interpreter','latex');
ylabel('Angular position (rad)','interpreter','latex');
grid;

legend('Reference','Case I','Case II','Case III','interpreter','latex')

close all;
seconds=1501;
load('caseA.mat');
r1=0.6;
ref1=[r1*ones(size(data_ql.time(1:seconds)))];
subplot(5,2,1);
plot(data_ql.time(1:seconds),ref1,'--','LineWidth',1.5);
hold;
plot(data_ql.time(1:seconds),data_ql.signals.values(1:seconds,1),'LineWidth',1.5);
load('caseA_dz.mat');
plot(data_ql.time(1:seconds),data_ql.signals.values(1:seconds,1),'LineWidth',1.5);
ylim([-0.03;0.65]);
grid;

load('caseA.mat');
r2=0.8;
ref2=[r2*ones(size(data_ql.time(1:seconds)))];
subplot(5,2,2);
plot(data_ql.time(1:seconds),ref2,'--','LineWidth',1.5);
hold;
plot(data_ql.time(1:seconds),data_ql.signals.values(1:seconds,2),'LineWidth',1.5);
load('caseA_dz.mat');
plot(data_ql.time(1:seconds),data_ql.signals.values(1:seconds,2),'LineWidth',1.5);
ylim([-0.03;0.85]);
xlabel('(a)','interpreter','latex');
grid;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('caseB.mat');
r1=-0.6;
ref1=[r1*ones(size(data_ql.time(1:seconds)))];
subplot(5,2,3);
plot(data_ql.time(1:seconds),ref1,'--','LineWidth',1.5);
hold;
plot(data_ql.time(1:seconds),data_ql.signals.values(1:seconds,1),'LineWidth',1.5);
load('caseB_dz.mat');
plot(data_ql.time(1:seconds),data_ql.signals.values(1:seconds,1),'LineWidth',1.5);
ylim([-0.65,0.03]);
xlabel('(b)','interpreter','latex');
grid;

load('caseB.mat');
r2=-0.8;
ref2=[r2*ones(size(data_ql.time(1:seconds)))];
subplot(5,2,4);
plot(data_ql.time(1:seconds),ref2,'--','LineWidth',1.5);
hold;
plot(data_ql.time(1:seconds),data_ql.signals.values(1:seconds,2),'LineWidth',1.5);
load('caseB_dz.mat');
plot(data_ql.time(1:seconds),data_ql.signals.values(1:seconds,2),'LineWidth',1.5);
ylim([-0.85,-0.03]);
grid;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load(['caseC.mat']);
r1=-0.4;
r2= 0.7;
ref1=[r1*ones(size(data_ql.time(1:seconds)))];
subplot(5,2,5);
plot(data_ql.time(1:seconds),ref1,'--','LineWidth',1.5);
hold;
plot(data_ql.time(1:seconds),data_ql.signals.values(1:seconds,1),'LineWidth',1.5);
load('caseC_dz.mat');
plot(data_ql.time(1:seconds),data_ql.signals.values(1:seconds,1),'LineWidth',1.5);
ylim([-0.45,0.03]);
ylabel('Angular position (rad)','interpreter','latex')
xlabel('(c)','interpreter','latex');
grid;

load('caseC.mat');
ref2=[r2*ones(size(data_ql.time(1:seconds)))];
subplot(5,2,6);
plot(data_ql.time(1:seconds),ref2,'--','LineWidth',1.5);
hold;
plot(data_ql.time(1:seconds),data_ql.signals.values(1:seconds,2),'LineWidth',1.5);
load('caseC_dz.mat');
plot(data_ql.time(1:seconds),data_ql.signals.values(1:seconds,2),'LineWidth',1.5);
ylim([-0.03;0.75]);
grid;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load(['caseD.mat']);
r1=0.4;
r2=-0.7;
ref1=[r1*ones(size(data_ql.time(1:seconds)))];
subplot(5,2,7);
plot(data_ql.time(1:seconds),ref1,'--','LineWidth',1.5);
hold;
plot(data_ql.time(1:seconds),data_ql.signals.values(1:seconds,1),'LineWidth',1.5);
load('caseD_dz.mat');
plot(data_ql.time(1:seconds),data_ql.signals.values(1:seconds,1),'LineWidth',1.5);
ylim([0.03;0.45])
xlabel('(d)','interpreter','latex');
grid;

load('caseD.mat');
ref2=[r2*ones(size(data_ql.time(1:seconds)))];
subplot(5,2,8);
plot(data_ql.time(1:seconds),ref2,'--','LineWidth',1.5);
hold;
plot(data_ql.time(1:seconds),data_ql.signals.values(1:seconds,2),'LineWidth',1.5);
load('caseD_dz.mat');
plot(data_ql.time(1:seconds),data_ql.signals.values(1:seconds,2),'LineWidth',1.5);
ylim([-0.75;0.03]);
grid;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load(['caseE.mat']);
r1=0.5;
r2=-0.5;
ref1=[r1*ones(size(data_ql.time(1:seconds)))];
subplot(5,2,9);
plot(data_ql.time(1:seconds),ref1,'--','LineWidth',1.5);
hold;
plot(data_ql.time(1:seconds),data_ql.signals.values(1:seconds,1),'LineWidth',1.5);
load('caseE_dz.mat');
plot(data_ql.time(1:seconds),data_ql.signals.values(1:seconds,1),'LineWidth',1.5);
ylim([-0.03;0.55]);
xlabel('Time (s)','interpreter','latex');
grid;

load('caseE.mat');
ref2=[r2*ones(size(data_ql.time(1:seconds)))];
subplot(5,2,10);
plot(data_ql.time(1:seconds),ref2,'--','LineWidth',1.5);
hold;
plot(data_ql.time(1:seconds),data_ql.signals.values(1:seconds,2),'LineWidth',1.5);
load('caseE_dz.mat');
plot(data_ql.time(1:seconds),data_ql.signals.values(1:seconds,2),'LineWidth',1.5);
ylim([-0.55;0.03])
xlabel('(e)','interpreter','latex');
grid;
legend('Reference','PI-PBC','PI-PBC+DZ','interpreter','latex')


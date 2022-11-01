%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                              %
% Plotting file for Planar Manipulator Dataset %
% Plotting n seconds of data                   %
%                                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%clear;
close all;
clc;
clear;
color1=[0.8,0,0];
%color2,=1/255*[204,102,0];
color2=[0,0.4,0.4];
color3=[0.4,0,0.4];
color4=[0.8,0.4,0];
s1="Case E";
s2="Case F";
s3="Case G";
c1=strcat(s1,".mat");
c2=strcat(s2,".mat");
c3=strcat(s3,".mat");

load(c1);
n=size(data_ql.time);
qd=[0.6 0.8];
refq1=qd(1)*ones(n(1,1),1);
refq2=qd(2)*ones(n(1,1),1);

f=figure;
set(f,'Position',[ 1000         462   560.0000  526.0000])



%%Position of links
%%Link 1
load(c1)
subplot(4,1,1)
plot(data_ql.time,refq1,'--','Color',color1,'LineWidth',1.5);
hold;
plot(data_ql.time,data_ql.signals.values(:,1),'Color',color2,'LineWidth',1.5);
load(c2)
plot(data_ql.time,data_ql.signals.values(:,1),'Color',color3,'LineWidth',1.5);
 load(c3)
 plot(data_ql.time,data_ql.signals.values(:,1),'Color',color4,'LineWidth',1.5);
ylabel('$q_1$ (rad)','interpreter','latex');
grid on;
%%Link 2
subplot(4,1,2)
load(c1)
plot(data_ql.time,refq2,'--','Color',color1,'LineWidth',1.5);
hold;
plot(data_ql.time,data_ql.signals.values(:,2),'Color',color2,'LineWidth',1.5);
load(c2)
plot(data_ql.time,data_ql.signals.values(:,2),'Color',color3,'LineWidth',1.5);
 load(c3)
 plot(data_ql.time,data_ql.signals.values(:,2),'Color',color4,'LineWidth',1.5);
ylabel('$q_2$ (rad)','interpreter','latex');
grid on;

%%Position of motors
%%Motor 1
load(c1)
subplot(4,1,3)
plot(data_ql.time,refq1,'--','Color',color1,'LineWidth',1.5);
hold;
plot(data_ql.time,data_qm.signals.values(:,1),'Color',color2,'LineWidth',1.5);
load(c2)
plot(data_ql.time,data_qm.signals.values(:,1),'Color',color3,'LineWidth',1.5);
 load(c3)
 plot(data_ql.time,data_qm.signals.values(:,1),'Color',color4,'LineWidth',1.5);
ylabel('$q_3$ (rad)','interpreter','latex');
grid on;
%%Motor 2
subplot(4,1,4)
load(c1)
plot(data_ql.time,refq2,'--','Color',color1,'LineWidth',1.5);
hold;
plot(data_ql.time,data_qm.signals.values(:,2),'Color',color2,'LineWidth',1.5);
load(c2)
plot(data_ql.time,data_qm.signals.values(:,2),'Color',color3,'LineWidth',1.5);
 load(c3)
 plot(data_ql.time,data_qm.signals.values(:,2),'Color',color4,'LineWidth',1.5);
ylabel('$q_4$ (rad)','interpreter','latex');
xlabel('Time (s)','interpreter','latex');
grid on;
legend('Reference',s1,s2,s3,'interpreter','latex')
%legend('Reference','Case A','Case B','interpreter','latex')
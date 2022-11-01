%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                %
% Plotting file for PERA Dataset %
% Plotting n seconds of data     %
%                                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;
close all;

myblue=[0,0,0.8];
mygreen=[0.7, 0.4, 0];
n=3*100; %how many seconds
s1="Case B";
s2="Case C";
a=readtable(strcat(s1,'.csv')); 
c=readtable(strcat(s2,'.csv')); 
refS1=0.5*ones(n,1);
refS2=0.6*ones(n,1);
refS3=-1.6*ones(n,1);
refE0=1.3*ones(n,1);
refE1=0.5*ones(n,1);
f=figure;
set(f,'Position', [1049         105         720         861])
%% Shoulder part
% Shoulder YAW
subplot(5,1,1);
plot(a.time(1:n),refS1,'--r','LineWidth',2)
hold;
plot(a.time(1:n),a.posS1(1:n),'color',myblue,'LineWidth',2)
plot(c.time(1:n),c.posS1(1:n),'color',mygreen,'LineWidth',2)
grid on;
%ylim([0.08 0.51]);
ylabel('$q_1$ (rad)','interpreter','latex');

% Shoulder PITCH
subplot(5,1,2);
plot(a.time(1:n),refS2,'--r','LineWidth',2)
hold;
plot(a.time(1:n),a.posS2(1:n),'color',myblue,'LineWidth',2)
plot(c.time(1:n),c.posS2(1:n),'color',mygreen,'LineWidth',2)
grid on;
%ylim([-0 0.7]);
ylabel('$q_2$ (rad)','interpreter','latex');


% Shoulder ROLL
subplot(5,1,3);
plot(a.time(1:n),refS3,'--r','LineWidth',2)
hold;
plot(a.time(1:n),a.posS3(1:n),'color',myblue,'LineWidth',2)
plot(c.time(1:n),c.posS3(1:n),'color',mygreen,'LineWidth',2)
grid on;
%ylim([-2.4 -1.55]);
ylabel('$q_3$ (rad)','interpreter','latex');
set(gca, 'TickLabelInterpreter', 'latex');

%% Elbow part
% Elbow PITCH
subplot(5,1,4);
plot(a.time(1:n),refE0,'--r','LineWidth',2)
hold;
plot(a.time(1:n),a.posE0(1:n),'color',myblue,'LineWidth',2)
plot(c.time(1:n),c.posE0(1:n),'color',mygreen,'LineWidth',2)
grid on;
%%ylim([-0.45 1.5]);
ylabel('$q_4$ (rad)','interpreter','latex');

% Elbow ROLL
subplot(5,1,5);
plot(a.time(1:n),refE1,'--r','LineWidth',2)
hold;
plot(a.time(1:n),a.posE1(1:n),'color',myblue,'LineWidth',2)
plot(c.time(1:n),c.posE1(1:n),'color',mygreen,'LineWidth',2)
grid on;
%ylim([-0.02 0.55]);
ylabel('$q_5$ (rad)','interpreter','latex');
legend('Reference',s1, s2, 'interpreter','latex');



xlabel('Time (s)','interpreter','latex');
set(gca, 'TickLabelInterpreter', 'latex');



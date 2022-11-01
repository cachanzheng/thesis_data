%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                %
% Plotting file for PERA Dataset %
% Plotting n seconds of data     %
%                                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;
close all;

mycolor=[0.4660 0.6740 0.1880];
mycolor2=[0.4940 0.1840 0.5560];
n=8*100; %how many seconds
c=readtable('Case 1.csv');
a=readtable('Case 2.csv');
b=readtable('Case 3.csv');
refS3=-2.094*ones(n,1);
refE0=0.785*ones(n,1);
refE1=0.785*ones(n,1);
subplot(3,1,1);
plot(a.time(1:n),refS3,'--r','LineWidth',1.5)
hold on;
plot(c.time(1:n),c.posS3(1:n),'-+','MarkerIndices',1:30:length(c.posS3(1:n)),'Color',mycolor2,'LineWidth',1.5)
plot(a.time(1:n),a.posS3(1:n),'Color',mycolor,'LineWidth',1.5)
plot(b.time(1:n),b.posS3(1:n),'b','LineWidth',1.5)
% %legend('Reference','Plot A', 'Plot B', 'interpreter','latex');
% title('Roll Shoulder $Y_S$','interpreter', 'latex');
 grid on;
% %ylim([-2.7 -1.7]);
% %xlim([0 2]);
 ylabel('$q_1$ (rad)','interpreter','latex');
% 
 subplot(3,1,2);
 plot(a.time(1:n),refE0,'--r','LineWidth',1.5)
 hold on;
 plot(c.time(1:n),c.posE0(1:n),'-+','MarkerIndices',1:30:length(c.posS3(1:n)),'Color',mycolor2,'LineWidth',1.5)
plot(a.time(1:n),a.posE0(1:n),'Color',mycolor,'LineWidth',1.5)
 plot(b.time(1:n),b.posE0(1:n),'b','LineWidth',1.5)
 grid on;
% %legend('Reference','Plot A', 'Plot B','interpreter','latex');
% title('Pitch Elbow $P_E$', 'interpreter', 'latex');
% %ylim([-0.2 1.7]);
% %xlim([0 2]);
 ylabel('$q_2$ (rad)','interpreter','latex');
% 
% 
% 
 subplot(3,1,3);
 plot(a.time(1:n),refE1,'--r','LineWidth',1.5);
 hold on;
plot(c.time(1:n),c.posE1(1:n),'-+','MarkerIndices',1:30:length(c.posS3(1:n)),'Color',mycolor2,'LineWidth',1.5)
 plot(a.time(1:n),a.posE1(1:n),'Color',mycolor,'LineWidth',1.5);
 plot(b.time(1:n),b.posE1(1:n),'b','LineWidth',1.5);
 grid on;
 legend('Reference','Case 1', 'Case 2', 'Case 3','interpreter','latex');
% title('Roll Elbow $Y_E$', 'interpreter', 'latex');
% %ylim([0 0.9]);
% %xlim([0 2]);
 ylabel('$q_3$(rad)','interpreter','latex');
 xlabel('Time (s)','interpreter','latex');
% 
 set(gca, 'TickLabelInterpreter', 'latex');

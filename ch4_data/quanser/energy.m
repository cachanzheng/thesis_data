load('Case F.mat');

q1=data_ql.signals.values(:,1);
q2=data_ql.signals.values(:,2);
q3=data_qm.signals.values(:,1);
q4=data_qm.signals.values(:,2);

e1=norm(q1,2);
e2=norm(q2,2);
e3=norm(q3,2);
e4=norm(q4,2);

energy1=[e1^2,e2^2,e3^2,e4^2]

load('Case G.mat');

q1=data_ql.signals.values(:,1);
q2=data_ql.signals.values(:,2);
q3=data_qm.signals.values(:,1);
q4=data_qm.signals.values(:,2);

e1=norm(q1,2);
e2=norm(q2,2);
e3=norm(q3,2);
e4=norm(q4,2);
energy2=[e1^2,e2^2,e3^2,e4^2]
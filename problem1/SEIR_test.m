figure;
[t,h] = ode45(@SEIR,(1:359),[0.2 0.8 0.05 0.05]);  %[初始感染人口占比 初始健康人口占比 初始潜伏人口占比 初始治愈人口占比]
plot(t,h(:,1),'r');
hold on;
plot(t,h(:,2),'b');
plot(t,h(:,3),'m');
plot(t,h(:,4),'g');
plot(t,usernum./400000,'c');
legend('感染人口占比I','健康人口占比S','潜伏人口占比E','治愈人口占比R');
title('SEIR模型')


function dy=SEIR(t,x)
beta = 0.5;         %感染率
gamma1 = 0.001;      %潜伏期治愈率
gamma2 = 0.005;      %患者治愈率
alpha = 0.5;        %潜伏期转阳率
dy=[alpha*x(3) - gamma2*x(1);
    -beta*x(1)*x(2);
    beta*x(1)*x(2) - (alpha+gamma1)*x(3);
    gamma1*x(3)+gamma2*x(1)];
end

function dy=SIRS(t,x)
beta = 0.7;      %感染率
gamma = 0.15;    %治愈率
alpha = 0.15;    %治愈复感率
dy=[beta*x(1)*x(2)-gamma*x(1);
    -beta*x(1)*x(2)+alpha*x(3)
    gamma*x(1) - alpha*x(3)];
end
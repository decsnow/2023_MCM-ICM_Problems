I=84000;
R=00;
N=525000;
S=N-I;
gama=0.0017;%jiechuchuanran
t=1:419;
lemda2=0.152
for i=1:(size(t,2)-1)
  lemda=0.152;
  mu=0.020;%zhiyu
  if i >150
     lemda=-0.1/400*i+0.4
     mu=-0.01/250+0.0155
  end            
  I(1+i)=I(i)+I(i)*(N-I(i)-R(i))*lemda2/N-mu*I(i);
  S(1+i)=S(i)-lemda*I(i)*S(i)/N+gama*R(i);
  R(1+i)=N-I(1+i)-S(1+i);
end
plot(t(1:359),usernum(1:359),'c',t(1:359),I(1:359),'blue','LineWidth',2);
xlabel('days')
ylabel('number')
hold on
plot(t(359:end),I(359:end),'LineWidth',2);
plot(419,21455,'ro-','MarkerFaceColor','g')
legend('I','real','pred')
mid=(usernum-I).^2;
disp(sum(mid(50:359)));

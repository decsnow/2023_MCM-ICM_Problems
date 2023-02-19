I=2000;
R=00;
N=8000;
S=N-I;
lemda=0.11;%dongweibafuyang
mu=0.020;%zhiyu
gama=0.0017;%jiechuchuanran
t=1:419;
for i=1:(size(t,2)-1)
I(1+i)=I(i)+I(i)*(N-I(i)-R(i))*lemda/N-mu*I(i);
S(1+i)=S(i)-lemda*I(i)*S(i)/N+gama*R(i);
R(1+i)=N-I(1+i)-S(1+i);
end
plot(t,I,t,S,t,R,t,usernum./70);
xlabel('days')
ylabel('number')
legend('report\_num','potential\_people','lose\_people','real')
data = importdata('rnnstate.log')
plot(data.data,'linewidth',1)
set(gca,'fontsize',14); 
xlabel('time t')
ylabel('x(t)')
title('ax(1-x) a=3.9')
print(gcf,'-dpng','sample.png')
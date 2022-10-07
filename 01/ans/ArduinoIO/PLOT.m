plot(0:0.1:5,ei(51:101),'r--'); 
hold on 
plot(0:0.1:5,eo_act(51:101),'b*-'); 
xlabel('time (seconds)') 
ylabel('voltage (Volts)') 
title('RC Circuit Step Response') 
legend('input','experimental output','Location','SouthEast') 
axis([0 5 0 5.1])
hold off
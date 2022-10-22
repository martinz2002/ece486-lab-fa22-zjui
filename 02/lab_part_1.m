t1 = out.tout;
y1=out.y;
y_dot1=out.y_dot;

hold on
subplot(2,1,1);
plot(t1, y1);
xlabel("Time");
ylabel("Response");
legend("y_1(t)");
title("Response for y_1(t)")
subplot(2,1,2);
plot(t1, y_dot1);
xlabel("Time");
ylabel("Response");
legend("y_1'(t)");
title("Response for y_1'(t)")
hold off
plot(out.tout,out.y)
hold on
plot(out.tout,out.y_dot)
xlabel("Time, t")
ylabel("Response")
legend("y(t)",...
    "y'(t)")
title("Response of H(s) in time domain")
hold off
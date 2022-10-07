plot(ScopeData.time,ScopeData.signals(1).values)
hold on
plot(ScopeData.time,ScopeData.signals(2).values)
xlabel("Time, t")
ylabel("Voltage, V")
legend("x(t)",...
    "x'(t)")
title("Function x(t) with b=0.7")
hold off
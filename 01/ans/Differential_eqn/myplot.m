plot(ScopeData0.time,ScopeData0.signals(1).values)
hold on
plot(ScopeData1.time,ScopeData1.signals(1).values)
plot(ScopeData2.time,ScopeData2.signals(1).values)
plot(ScopeData3.time,ScopeData3.signals(1).values)
xlabel("Time, t")
ylabel("Voltage, V")
legend("R_2 = 40k\Omega, m/k=4","R_2 = 30k\Omega, m/k=3",...
    "R_2 = 20k\Omega,m/k=2","R_2 = 10k\Omega,m/k=1")
title("Function x(t) with different R_1 (m/b)")
hold off
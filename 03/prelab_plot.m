K=97/5
Kr=1+3/(5*K)
Kd=0
sim("prelab.slx")
plot(ans.tout, ans.Omega.signals.values)
hold on
K=16/15
Kr=1+3/(5*K)
Kd=0
sim("prelab.slx")
plot(ans.tout, ans.Omega.signals.values)

K=97/5
Kr=1+3/(5*K)
Kd=(10*sqrt(3)-5)/388
sim("prelab.slx")
plot(ans.tout, ans.Omega.signals.values)

legend("Controller 1", "Controller 2", "Controller 3")
title("Disturbance Response to a Unit Step in \tau_d")
ylabel("Response \Omega(t)")
xlabel("Time")
hold off
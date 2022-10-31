zeta = 0.6;
a = 50;
sim('lab02_3.slx')
plot(ans.tout, ans.y)
xlabel("Time")
ylabel("Response")
title("H_3(s)")
% legend("\alpha=50")

hold on

a = 5;
sim('lab02_3.slx')
plot(ans.tout, ans.y)

a = 2.5;
sim('lab02_3.slx')
plot(ans.tout, ans.y)

A = [-6, -25; 1, 0]
B = [25;0]
C = [1,0;0,1]
D = [0;0]

sim("lab_part1.slx")
plot(out.y.time, out.y.signals.values)

legend("\alpha=50","\alpha=5","\alpha=2.5","No Extra Pole")
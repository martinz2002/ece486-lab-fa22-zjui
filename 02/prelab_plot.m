subplot(2,1,1);
plot(out.tout,out.y)
xlabel("Time, t")
ylabel("Response")
legend("y(t)")
% title("Response of H(s) in time domain")

subplot(2,1,2)
plot(out.tout,out.y_dot)
xlabel("Time, t")
ylabel("Response")
legend("y'(t)")
% title("Response of H(s) in time domain")

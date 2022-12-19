H = tf([0 0 1.21149 3], [0.0126, 1 -0.37044, -29.4])
nyquist(20*H)
figure()
margin(20*H)
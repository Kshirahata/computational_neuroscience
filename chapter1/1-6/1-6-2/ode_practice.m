clear
x0 = 2;
t0 = 0;
dt = 0.001;
tmax = 20;
tvec = t0:dt:tmax;
[t, x] = ode45(@test_ode, tvec, x0)
plot(t,x)

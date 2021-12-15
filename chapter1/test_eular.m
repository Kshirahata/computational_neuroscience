clear
x0 = 2;
t0 = 0;
dt = 0.001;
tmax = 20;
tvec = t0:dt:tmax;
xvec = zeros(size(tvec));
x(1) = x0;
for i = 2:length(tvec)
    tval = tvec(i);
    dx = 2 * sin(0.1 * tval * tval);
    x(i) = x(i-1) + dx * dt;
end
plot(tvec,x);
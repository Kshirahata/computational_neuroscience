I1 = 3.999e-9;
I2 = 4.001e-9;
[V1,t] = tuto2_1_1a(I1);
[V2,t] = tuto2_1_1a(I2);
figure(2)

dt = 0.1e-3;
ti = 1 : 200e-3 / dt : 2 / dt;
plot(t(ti), V1(ti), 'o')
hold on
plot(t(ti), V2(ti), 'o')
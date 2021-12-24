sigma_I = [0.003, 0.03, 0.3];
I0 = 0: 0.001e-7: 6.001e-9;
fire = zeros(length(sigma_I), length(I0));
for i = 1: length(sigma_I)
    for i2 = 1: length(I0)
        [spikes] = tuto2_1_2a(sigma_I(i), I0(i2));
        f = find(spikes);
        l = length(f);
        fr = l / 2;
        fire(i,i2) = fr;
    end
end
plot(I0, fire)
legend('sigma=0.003', 'sigma=0.03', 'sigma=0.3')
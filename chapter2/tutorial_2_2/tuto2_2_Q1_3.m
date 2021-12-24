I = 190e-12: 1e-12: 220e-12;
F1 = zeros(length(I), 1);
F2 = zeros(length(I), 1);
F3 = zeros(length(I), 1);
V1 = zeros(length(I), 1);
V2 = zeros(length(I), 1);
V3 = zeros(length(I), 1);

for i= 1: length(I)
    [v1, a, spikes1] = tuto2_2_Q1(I(i));
    [v2, a, spikes2] = tuto2_2_Q2(I(i));
    [v3, a, spikes3] = tuto2_2_Q3(I(i));
    
    V1(i) = mean(v1);
    f1 = find(spikes1);
    l1 = length(f1);
    fire1 = l1 / 2;
    F1(i) = fire1;
    
    V2(i) = mean(v2);
    f2 = find(spikes2);
    l2 = length(f2);
    fire2 = l2 / 2;
    F2(i) = fire2;
    
    V3(i) = mean(v3);
    f3 = find(spikes3);
    l3 = length(f3);
    fire3 = l3 / 2;
    F3(i) = fire3;
end

subplot(3, 1, 1)
plot(I, F1, 'o')
hold on
plot(I, F2, 'x')
plot(I, F3, '*')
legend('Forced Voltge Clamp', 'Threshold Increase', 'Refractory Conductance')

subplot(3, 1, 2)
plot(I, V1)
hold on
plot(I, V2, '--')
plot(I, V3, '-o')
legend('Forced Voltge Clamp', 'Threshold Increase', 'Refractory Conductance')

subplot(3, 1, 3)
plot(F1, V1)
hold on
plot(F2, V2)
plot(F3, V3)
legend('Forced Voltge Clamp', 'Threshold Increase', 'Refractory Conductance')

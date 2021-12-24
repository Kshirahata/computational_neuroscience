I=[4e-9:0.001e-9:6e-9];
F=zeros(length(I), 1);
for i = 1:length(I)
    [V,t,spikes] = tuto2_1_1a(I(i));
    f = find(spikes);
    l = length(f);
    fr = l / 2;
    F(i) = fr;
end
plot(I,F,'o')
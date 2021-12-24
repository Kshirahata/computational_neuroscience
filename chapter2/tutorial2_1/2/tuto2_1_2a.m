function[spikes] = tuto2_1_2a(sigma_I,I0)
E_L = -70e-3;
R_m = 5e6;
C_m = 2e-9;
Vth = -50e-3;
Vre = -65e-3;
tmax = 2;
dt = 0.1e-3;
t = 0 : dt : tmax;
V = zeros(size(t));
V(1) = E_L;
Iapp = ones(size(t)) * I0;
spikes = zeros(size(t));

for i = 2:length(t)
    V(i)=V(i-1) + dt * (E_L - V(i-1)) / (R_m * C_m)+ dt *Iapp(i) / C_m + randn(1) * sigma_I * sqrt(dt);
    if V(i) > Vth
        spikes(i) = 1;
        V(i) = Vre;
    end
end
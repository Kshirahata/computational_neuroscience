function [V, t, spikes] = tuto2_2_Q3(I0)
E_L = -70e-3;
E_K = -80e-3;
R_m = 100e6;
C_m = 0.1e-9;
tmax = 2;
dt=0.1e-4;
t=0: dt: tmax;

V = zeros(size(t));
V(1) = E_L;
Vth = zeros(size(t));
Vth0 = -50e-3;
Vth(1) = Vth0;
Vthmax = 200e-3;
tauVth = 1e-3;

Gref = zeros(size(t));
Gref(1) = 0;
dG = 2e-6;

tauGref = 0.2e-3;
Iapp = ones(size(t)) * I0;
spikes = zeros(size(t));
for i = 2:length(t)
    V(i) = V(i-1) + dt * (E_L - V(i-1)) / (R_m * C_m) + dt * Gref(i-1) * (E_K - V(i-1)) / C_m + dt * Iapp(i) / C_m;
    Vth(i) = Vth(i-1) + dt * (Vth0 - Vth(i-1)) / tauVth;
    Gref(i) = Gref(i-1) - dt * Gref(i-1) / tauGref;
    if V(i) > Vth(i)
        spikes(i-1) = 1;
        Vth(i) = Vthmax;
        Gref(i) = Gref(i) + dG;
    end
end
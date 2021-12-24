function [V, t, spikes] = tuto2_2_Q2(I0)
E_L = -70e-3;
R_m = 100e6;
C_m = 0.1e-9;

Vre = -65e-3;
tmax = 2;
dt=0.1e-3;
t=0: dt: tmax;

V = zeros(size(t));
V(1)=E_L;

Vth = zeros(size(t));
Vth0 = -50e-3;
Vth(1) = Vth0;
Vthmax = 200e-3;

tauVth = 1e-3;
Iapp = ones(size(t)) * I0;
spikes = zeros(size(t));
for i = 2: length(t)
    V(i) = V(i-1) + dt * (E_L-V(i-1)) / (R_m * C_m) + dt * Iapp(i) / C_m;
    Vth(i) = Vth(i-1) + dt * (Vth0 - Vth(i-1)) / tauVth;
    if V(i) > Vth(i)
        spikes(i-1) = 1;
        V(i) = Vre;
        Vth(i) = Vthmax;
    end
end
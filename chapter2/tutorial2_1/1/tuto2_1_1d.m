E_L=-70e-3;
R_m = 5e6;
C_m = 2e-9;
Vth = -50e-3;
Vre = -65e-3;
Iapp = 4e-9 : 0.001e-9 : 6e-9;
fire =1 ./ (R_m * C_m * log(Iapp * R_m + E_L - Vre ) - R_m * C_m * log(Iapp * R_m + E_L - Vth));
tuto2_1_1c
hold on
plot(Iapp, fire, 'o')
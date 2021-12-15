%1-6-3 Solving Coupled ODEs with Multiple Variables
clear;

%初期値の設定
x0 = 1.0;
v0 = 0.0;
t0 = 0
%シミュレーションに使う時間幅の設定
dt = 0.00001
%時間の終点の設定
tmax = 100;
%シミュレーションに用いるパラメータの設定
omega = 3;
omega_sqr = omega * omega
%時間軸に用いるベクトルの作成
tvector = t0:dt:tmax;
%時間に対応した応答変数を格納するためのベクトルの作成
x1 = zeros(size(tvector));
x2 = zeros(size(tvector));

%微分方程式のシミュレーション(オイラー法)
%応答変数に初期値を設定する
x1(1) = x0;
x2(1) = v0;
%t=1以降にx1とx2がどう変化するかのシミュレーション
for i = 2:length(tvector);
x1(i) = x1(i - 1) + x2(i - 1) * dt;
x2(i) = x2(i - 1) + omega_sqr * x1(i - 1) * dt;
end

%シミュレーションした結果をプロット
plot(tvector, x1,tvector,x2);

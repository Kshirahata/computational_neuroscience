%１-6-2 Simulating ODEs with MATLAB
clear;

%初期値の設定
x0 = 2;
t0 = 0;
%シミュレーションに使う時間幅の設定
dt = 0.001;
%時間の終点の設定
tmax = 20;
%時間軸に用いるベクトルの作成
tvec = t0:dt:tmax;
%時間に対応した応答変数を格納するためのベクトルの作成
xvec = zeros(size(tvec));

%微分方程式のシミュレーション(オイラー法)
%応答変数に初期値を設定する
x(1) = x0;
%t=1以降にxがどう変化するかのシミュレーション
for i = 2:length(tvec)
    tval = tvec(i);
    dxdt = 2 * sin(0.1 * tval * tval);
    x(i) = x(i-1) + dxdt * dt;
end

%シミュレーションした結果をプロット
plot(tvec,x);
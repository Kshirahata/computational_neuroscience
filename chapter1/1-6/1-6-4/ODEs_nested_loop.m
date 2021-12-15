%1-6-4 Solving ODEs with Nested for loop
clear;

%初期値の設定
t0 = 0;
%時間の設定
dt = 0.001;
tmax = 3;
t = 0:dt:tmax;
%パラメータの変化範囲
Kvals = 0.1:0.1:20;
%パラメータに対応する出力結果を格納するベクトルの作成
xfinal = zeros(size(Kvals));

%シミュレーションを行う(オイラー法)
%パラメータを変化させる
for simulation = 1:length(Kvals)
    K = Kvals(simulation);
    x = zeros(size(t));
    %指定したパラメータでシミュレーションする
    for i = 2:length(t)
        x(i) = x(i - 1) + 2 * sin(t(i)^2 / K);
    end
    %plot(t,x);
    %hold on
    xfinal(simulation) = x(end);
end

%パラメータと出力結果の関係を調べる
plot(Kvals,xfinal)

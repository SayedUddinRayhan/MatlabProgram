% Determine the order(N) and cutoff frequency(Wc) of a lowpass butterworth
% filter with the following specification
% Wp=10 rad/s, Ws=20 rad/s, Rp=-2 dB, Rs=-20dB;

Wp=10;
Ws=20;
Rp=-2;
Rs=-20;
[N,Wc]=buttord(Wp,Ws,Rp,Rs,'s')

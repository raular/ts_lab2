function[y] = process(x,h,N)
L = length(h);
Lx = length(x);
H = fft(h,N);
M = N - L + 1;
P = floor(Lx/M);

y=zeros(1, L+Lx-1);
for i = 0 : P - 1
    xb = x(i*M+1:(i+1)*M);
    yb = cc(xb,H);
    y(i*M+1:i*M+N) = y(i*M+1:i*M+N) + yb;
end
xb = x(P*M+1:Lx);
yb = cc(xb,H);
y(P*M+1:L+Lx-1) = y(P*M+1:L+Lx-1) + yb(1:L+Lx-P*M-1);
end

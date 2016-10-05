function[y] = process(x,h,N)
L = length(h);
Lx = length(x);
H = fft(h,N);
M = N - L + 1;
P = floor(Lx/M);
if P > 0
    for i = 0 : P - 1
       xb = x(i*M+1:(i+1)*M);
       yb = cc(xb,H);
       y(i*M+1:i*M+N) = y(i*M+1:i*M+N) + yb;
    end
    xb = x((P-1)*M+1:Lx);
    yb = cc(xb,H);
    y((P-1)*M+1:(P-1)*M+N) = y((P-1)*M+1:(P-1)*M+N) + yb;
end
end
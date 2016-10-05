function[yb] = cc(xb,H)
N = length(H);
X = fft(xb,N);
Y = X.*H;
yb = ifft(Y,N);
end

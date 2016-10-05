function[yb] = cc(xb,H)
hsize = size(H);
N = hsize(2);
X = fft(xb,N);
Y = X.*H;
yb = ifft(Y,N);
end
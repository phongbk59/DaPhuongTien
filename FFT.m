[y,fs] = audioread('melody.wav')
Y = fft(y);
plot(abs(Y))
figure
N = fs % number of FFT points
transform = fft(y,N)/N;
magTransform = abs(transform);

faxis = linspace(-fs/2,fs/2,N);
plot(faxis,fftshift(magTransform));
xlabel('Frequency (Hz)')

% view frequency content up to half the sampling rate:
%axis([0 length(faxis)/2, 0 max(magTransform)]) 

% change the tick labels of the graph from scientific notation to floating point: 
xt = get(gca,'XTick');  
set(gca,'XTickLabel', sprintf('%.0f|',xt))
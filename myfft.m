function [yfft, f] = myfft(y,Fs)
%compute the standard fft
yfft = fft(y);
yfft = yfft(1:ceil((length(y)+1)/2));

function MagnitudeSpectrumPlot(yfft,f,col)
    if nargin<3
        col = 'b';
    end
    plot(f,abs(yfft),col);
    xlabel('Frequency (Hz)')
    ylabel('|Y(f)|')
end
end



[x, fs] = audioread('man_noisy.wav');
m = 3;
n = 3;
%identify frequencies where noise is occurring
w = -pi:pi/10000:pi;
X = DTFT(x,w);
figure("Name","4a");
plot(w,abs(X))
grid on;
title('Magnitude Response of x[n]')
ylabel('Magnitude [rad]')
xlabel('Normalized Angular Frequency [rad/s]')
w = -pi:pi/10000:pi;
targetfreq = .792624;
xn1 = shift(x,1);
xn2 = shift(x,2);
cosw0 = cos(targetfreq);
yn =[1 -2*cos(targetfreq) 1];
X = DTFT(x,w);
xconv(yn,x);
%% 4(e) LISTEN TO AUDIO
audiowrite("man_clean.wav",xconv,fs);
function H = DTFT(x,w)
%computes the DTFT by summing x[n]*exp(-jwk)=
  
    H = zeros(length(w),1);
    for nn = 1:length(x)
        H = H + x(nn).*exp(-1j*w.'*(nn-1));
    end
    
end

function xs = shift(x, s)
%SHIFT  right shifts an array while preserving its size

    % sets new array of zeroes
    xs = zeros(length(x), 1);
    
    for n = 1:length(x)
        % if weve shifted right s times and were less than the original
        % array size
        if n-s > 0 && n-s <= length(x)
            % copy array indice
            xs(n) = x(n-s);
        end
    end

end


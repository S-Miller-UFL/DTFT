%% QUESTION 1 COMMENTING

% DO NOT REMOVE THE LINE BELOW
% MAKE SURE 'eel3135_lab06_comment.m' IS IN THE SAME DIRECTORY AS THIS FILE
clear; close all; clc;
type('eel3135_lab06_comment.m')

%% QUESTION 2: DTFT OF COMMON FUNCTIONS 

%% 2 (a) PLOT DTFT
N = [0:5];
h = [0 1 0 0 0 0];
n = [0:1:24];
w = -pi:pi/5000:pi;
H = DTFT(h,w);
%plot time domain signal
figure
subplot(3,1,1)
stem(N,h)
ylim([0 2])
title('Time domain of x[n]')
xlabel('Time Index (n)')
ylabel('Amplitude')
subplot(3,1,2)
plot(w,abs(H))
ylim([0 2])
grid on;
title('Magnitude Response of H')
ylabel('Magnitude [rad]')
xlabel('Normalized Angular Frequency [rad/s]')
subplot(3,1,3)
plot(w,angle(H))
grid on;
title('Phase Response of H')
ylabel('Phase [rad]')
xlabel('Normalized Angular Frequency [rad/s]')

%Neither



%% 2 (b) PLOT DTFT
N = [0:5];
h = [0 0 1 0 0 0];
n = [0:1:24];
w = -pi:pi/5000:pi;
H = DTFT(h,w);
%plot time domain signal
figure("Name","2b");
subplot(3,1,1)
stem(N,h)
ylim([0 2])
title('Time domain of x[n]')
xlabel('Time Index (n)')
ylabel('Amplitude')
subplot(3,1,2)
plot(w,abs(H))
ylim([0 2])
grid on;
title('Magnitude Response of H')
ylabel('Magnitude [rad]')
xlabel('Normalized Angular Frequency [rad/s]')
subplot(3,1,3)
plot(w,angle(H))
grid on;
title('Phase Response of H')
ylabel('Phase [rad]')
xlabel('Normalized Angular Frequency [rad/s]')
% Neither


%% 2 (c) PLOT DTFT
N = 25;
n = 0:(N-1);
x = (.9.^n).*ones(1,N);

w = -pi:pi/5000:pi;
X = DTFT(x,w);
%plot time domain signal
figure("Name","2c");
subplot(3,1,1)
plot(n,x);
title('Time domain of x[n]')
xlabel('Time Index (n)')
ylabel('Amplitude')
subplot(3,1,2)
plot(w,abs(X))
grid on;
title('Magnitude Response of H')
ylabel('Magnitude [rad]')
xlabel('Normalized Angular Frequency [rad/s]')
subplot(3,1,3)
plot(w,angle(X))
grid on;
title('Phase Response of H')
ylabel('Phase [rad]')
xlabel('Normalized Angular Frequency [rad/s]')
% low frequency

%% 2 (d) PLOT DTFT
N = 25;
n = 0:(N-1);
x = (.9.^n).*ones(1,N).*cos((3*pi)/4).*n;

w = -pi:pi/5000:pi;
X = DTFT(x,w);
%plot time domain signal
figure("Name","2d");
subplot(3,1,1)
plot(n,x);
title('Time domain of x[n]')
xlabel('Time Index (n)')
ylabel('Amplitude')
subplot(3,1,2)
plot(w,abs(X))
grid on;
title('Magnitude Response of H')
ylabel('Magnitude [rad]')
xlabel('Normalized Angular Frequency [rad/s]')
subplot(3,1,3)
plot(w,angle(X))
grid on;
title('Phase Response of H')
ylabel('Phase [rad]')
xlabel('Normalized Angular Frequency [rad/s]')
% low frequency

%% 2 (e) PLOT DTFT
N = 25;
n = 0:(N-1);
u2 = ones(1,N);
u2(1:2) = 0;
u7 = ones(1,N);
u7(1:6) = 0;
x = u2-u7;

w = -pi:pi/5000:pi;
X = DTFT(x,w);
%plot time domain signal
figure("Name","2e");
subplot(3,1,1)
plot(n,x);
ylim([0 2])
title('Time domain of x[n]')
xlabel('Time Index (n)')
ylabel('Amplitude')
subplot(3,1,2)
plot(w,abs(X))
grid on;
title('Magnitude Response of H')
ylabel('Magnitude [rad]')
xlabel('Normalized Angular Frequency [rad/s]')
subplot(3,1,3)
plot(w,angle(X))
grid on;
title('Phase Response of H')
ylabel('Phase [rad]')
xlabel('Normalized Angular Frequency [rad/s]')
%low frequency

%% 2 (f) PLOT DTFT
N = 25;
n = 0:(N-1);
x = ((-1).^n).*ones(1,N);

w = -pi:pi/5000:pi;
X = DTFT(x,w);
%plot time domain signal
figure("Name","2f");
subplot(3,1,1)
plot(n,x);
title('Time domain of x[n]')
xlabel('Time Index (n)')
ylabel('Amplitude')
subplot(3,1,2)
plot(w,abs(X))
grid on;
title('Magnitude Response of H')
ylabel('Magnitude [rad]')
xlabel('Normalized Angular Frequency [rad/s]')
subplot(3,1,3)
plot(w,angle(X))
grid on;
title('Phase Response of H')
ylabel('Phase [rad]')
xlabel('Normalized Angular Frequency [rad/s]')
% high frequency



%% QUESTION 3: DTFT PROPERTIES

%% 3(a) PLOT DTFT
N = 40;
n = 0:(N-1);
un = ones(1,N);
un12 = ones(1,N);
cosn = (cos(pi/6).*n);
un12(1:11) = 0;
x = ((25/46)-((21/46)*cosn)).*(un-un12);

w = -pi:pi/5000:pi;
X = DTFT(x,w);
%plot time domain signal
figure("Name","3a");
subplot(3,1,1)
plot(n,x);
title('Time domain of x[n]')
xlabel('Time Index (n)')
ylabel('Amplitude')
subplot(3,1,2)
plot(w,abs(X))
ylim([0 20])
grid on;
title('Magnitude Response of H')
ylabel('Magnitude [rad]')
xlabel('Normalized Angular Frequency [rad/s]')
subplot(3,1,3)
plot(w,angle(X))
ylim([-10 10])
grid on;
title('Phase Response of H')
ylabel('Phase [rad]')
xlabel('Normalized Angular Frequency [rad/s]')
% nothing happens

%% 3(b) PLOT DTFT
un12 = shift(un12,2);
un = shift(un,2);
cosn = shift(cosn,2);
xn2 = ((25/46)-((21/46)*cosn)).*(un-un12);
X = DTFT(xn2,w);
%plot time domain signal
figure("Name","3b");
subplot(3,1,1)
plot(n,xn2);
title('Time domain of x[n]')
xlabel('Time Index (n)')
ylabel('Amplitude')
subplot(3,1,2)
plot(w,abs(X))
ylim([0 20])
grid on;
title('Magnitude Response of H')
ylabel('Magnitude [rad]')
xlabel('Normalized Angular Frequency [rad/s]')
subplot(3,1,3)
plot(w,angle(X))
ylim([-10 10])
grid on;
title('Phase Response of H')
ylabel('Phase [rad]')
xlabel('Normalized Angular Frequency [rad/s]')
%it didnt change

%% 3(c) PLOT DTFT
xcos = x .* (cos(pi/2).*n);
X = DTFT(xcos,w);
%plot time domain signal
figure("Name","3c");
subplot(3,1,1)
plot(n,xcos);
title('Time domain of x[n]')
xlabel('Time Index (n)')
ylabel('Amplitude')
subplot(3,1,2)
plot(w,abs(X))
ylim([0 20])
grid on;
title('Magnitude Response of H')
ylabel('Magnitude [rad]')
xlabel('Normalized Angular Frequency [rad/s]')
subplot(3,1,3)
plot(w,angle(X))
ylim([-10 10])
grid on;
title('Phase Response of H')
ylabel('Phase [rad]')
xlabel('Normalized Angular Frequency [rad/s]')
% only the magnitude gets changed,not the phase response.

%% 3(d) PLOT DTFT
xconv = conv(x,x);
xconv = xconv(1:length(n));
X = DTFT(xconv,w);
%plot time domain signal
figure("Name","3d");
subplot(3,1,1)
plot(n,xconv);
title('Time domain of x[n]')
xlabel('Time Index (n)')
ylabel('Amplitude')
subplot(3,1,2)
plot(w,abs(X))
grid on;
title('Magnitude Response of H')
ylabel('Magnitude [rad]')
xlabel('Normalized Angular Frequency [rad/s]')
subplot(3,1,3)
plot(w,angle(X))
ylim([-10 10])
grid on;
title('Phase Response of H')
ylabel('Phase [rad]')
xlabel('Normalized Angular Frequency [rad/s]')
% increases magnitude and also changes phase

%% 3(e) PLOT DTFT
xcomplicated = x + (x.*(cos(pi).*n));
X = DTFT(xcomplicated,w);
%plot time domain signal
figure("Name","3e");
subplot(3,1,1)
plot(n,xcomplicated);
title('Time domain of x[n]')
xlabel('Time Index (n)')
ylabel('Amplitude')
subplot(3,1,2)
plot(w,abs(X))
grid on;
title('Magnitude Response of H')
ylabel('Magnitude [rad]')
xlabel('Normalized Angular Frequency [rad/s]')
subplot(3,1,3)
plot(w,angle(X))
ylim([-10 10])
grid on;
title('Phase Response of H')
ylabel('Phase [rad]')
xlabel('Normalized Angular Frequency [rad/s]')
%increases magnitude and also changes phase



%% QUESTION 4: NULLING FILTER

% DO NOT REMOVE THE LINE BELOW
% MAKE SURE 'man_noisy.wav' IS IN THE SAME DIRECTORY AS THIS FILE
% NON-NOISY AUDIO ORIGINATES FROM HALF LIFE 2 BY VALVE SOFTWARE
[x, fs] = audioread('man_noisy.wav');


%% 4(a) EVALUATE DTFT OF INPUT SIGNAL
w = -pi:pi/10000:pi;
X = DTFT(x,w);
%plot time domain signal
figure("Name","4a");
plot(w,abs(X))
grid on;
title('Magnitude Response of x[n]')
ylabel('Magnitude [rad]')
xlabel('Normalized Angular Frequency [rad/s]')


%% 4(b) IDENTIFY FREQUENCY

% noise is at .792624 rads/sec
% or, 927 Hz.

%% 4(c) DESIGN FILTER
targetfreq = .792624;
xn1 = shift(x,1);
xn2 = shift(x,2);
cosw0 = cos(targetfreq);
yn =[1 -2*cos(targetfreq) 1];
Y = DTFT(yn,w);
figure("Name","4c");
subplot(2,1,1)
plot(w,abs(Y))
grid on;
title('Magnitude Response of filter')
ylabel('Magnitude [rad]')
xlabel('Normalized Angular Frequency [rad/s]')
subplot(2,1,2)
plot(w,angle(Y))
grid on;
title('Phase Response of filter')
ylabel('Magnitude [rad]')
xlabel('Normalized Angular Frequencys [rad/s]')


%% 4(d) APPLY FILTER
%1st pass
xconv = conv(yn,x);
xconv = xconv(1:length(x));
X = DTFT(xconv,w);
figure("Name","4d");
plot(w,abs(X))
grid on;
title('Magnitude Response of filtered data')
ylabel('Magnitude [rad]')
xlabel('Normalized Angular Frequency [rad/s]')
%the new filtered audio has the high pitched whine removed, compared to
%the old one, while also sounding kinda compressed. its not perfect but
%certainly better.

%% 4(e) LISTEN TO AUDIO
audiowrite("man_clean.wav",xconv,fs);

%% 4(f) EXTEND YOUR KNOWLEDGE TO NOISY2.WAV

% DO NOT REMOVE THE LINE BELOW
% MAKE SURE 'man_noisy2.wav' IS IN THE SAME DIRECTORY AS THIS FILE
% NON-NOISY AUDIO ORIGINATES FROM HALF LIFE 2 BY VALVE SOFTWARE
[x, fs] = audioread('man_noisy2.wav');

%identify frequencies where noise is occurring
w = -pi:pi/10000:pi;
X = DTFT(x,w);
%plot time domain signal
figure("Name","4f");
subplot(4,1,1);
plot(w,abs(X))
grid on;
title('Magnitude Response of x[n]')
ylabel('Magnitude [rad]')
xlabel('Normalized Angular Frequency [rad/s]')
%frequencies to filter are:
% 1.32104
% .792624
% .396469

%make filter
yn1p32 = [1 -2*cos(1.32104) 1];
ynp79 = [1 -2*cos(.792624) 1];
ynp39 = [1 -2*cos(.396469) 1];
yn = conv(ynp39,conv(yn1p32,ynp79));
Y = DTFT(yn,w);
subplot(4,1,2);
plot(w,abs(Y))
grid on;
title('Magnitude Response of all filters combined')
ylabel('Magnitude [rad]')
xlabel('Normalized Angular Frequency [rad/s]')
subplot(4,1,3);
plot(w,angle(Y));
grid on;
title('Phase Response of all filters combined')
ylabel('Magnitude [rad]')
xlabel('Normalized Angular Frequency [rad/s]')
xconv = conv(yn,x);
X = DTFT(xconv,w);
subplot(4,1,4);
plot(w,abs(X))
grid on;
title('Magnitude Response of filtered audio')
ylabel('Magnitude [rad]')
xlabel('Normalized Angular Frequency [rad/s]')

snapnow
audiowrite("man_clean2.wav",xconv,fs);
%% ALL FUNCTIONS SUPPORTING THIS CODE 

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


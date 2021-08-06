script
clc
clear
disp('% �� �8. �������� ���������� �������')
disp('%')
disp('%')
disp('% ������� �������� ������');
DATA=0;
while DATA==0
Nb = input('Nb = ');   % ����� �������
b = input('b = ');     % ������ ������������� ��������� ������������ �������
a = input('a = ');     % ������ ������������� ����������� ������������ �������
N1 = input('N1 = ');   % ����� ���������� ��������������
N2 = input('N2 = ');   % ����� �����������
Fs = input('Fs = ');   % ������� �������������
disp('% ��������� ������������ ����� �������� ������')
disp('% ��� ���������� �������� ������ ������� 1')
disp('% ��� ������������ �������� ������ ������� 0 � ��������� ����')
DATA = input('--> '); 
end 
disp('%')
disp('%')
disp('% ��� ����������� ������� <ENTER>')
pause 
disp('%')
disp('%')
disp('% �.1. ���������� ���������� �������������� - ������� impz')
disp('%')
disp('%')
disp('% ��� ������ ������� ���������� �������������� ������� <ENTER>')
pause 
h1 = impz(b,a,N1);          % ���������� ��������������
n = 0:(N1-1);               % ���������� ������������� ����� ��� ��
figure('Name','Impulse Response','NumberTitle', 'off')
subplot(2,1,1), stem(n,h1,'fill','MarkerSize',3), grid
xlabel('n'), ylabel('h(n)')
title('Impulse Response h(n) - impz')
disp('%')
disp('%')
disp('% ��� ����������� ������� <ENTER>')
pause 
disp('%')
disp('%')
disp('% �.2. ���������� ���������� �������������� - ������� filter')
disp('%')
disp('%')
disp('% ��� ������ ������� ���������� �������������� ������� <ENTER>')
pause 
u0 = [1 zeros(1,(N1-1))];    % �������� ��������� �������
h2 = filter(b,a,u0);         % ���������� ��������������
subplot(2,1,2), stem(n,h2,'fill','MarkerSize',3), grid
xlabel('n'), ylabel('h(n)'), title('Impulse Response h(n) - filter')
disp('%')
disp('%')
disp('% ��� ����������� ������� <ENTER>')
pause 
disp('%')
disp('%')
disp('% �.3. ���������� ������� �� ������� �������')
disp('%')
disp('%')
disp('% ��� ������ �������� ����������� � �������, ����������� �� ������� �������,  ������� <ENTER>')
pause
x = input_1(N2);    % ����������� (���������� ������������� �������)  
y1 = conv(x,h1);    % ������� �����, ������ ����� �������
L = N1+N2-1;        % ����� �������
n = 0:(N2-1);       % ���������� ������������� ����� ��� �����������
n1 = 0:(L-1);       % ���������� ������������� ����� ��� �������
figure('Name','Input and Output Signals','NumberTitle', 'off')
subplot(4,1,1), stem(n,x,'fill','MarkerSize',3), grid, xlabel('n')
ylabel('x(n)'), title('Input Signal - Discrete Rectangular Impulse x(n)')
subplot(4,1,2), stem(n1,y1,'fill','MarkerSize',3), grid
ylabel('y(n)'), title('Output Signal y1(n) � conv (length = L)')
subplot(4,1,3), stem(n,y1(1:N2),'fill','MarkerSize',3), grid
xlabel('n'), ylabel('y1(n)')
title('Output Signal y1(n) � conv (length = N2)')
disp('%')
disp('%')
disp('% ��� ����������� ������� <ENTER>')
pause 
disp('%')
disp('%')
disp('% �.4. ���������� ������� �� ����������� ���������')
disp('%')
disp('%')
disp('% ��� ������ ������� �������, ����������� �� ����������� ���������, ������� <ENTER>')
pause 
y2 = filter(b,a,x);  % ������� ��� 
subplot(4,1,4), stem(n,y2,'fill','MarkerSize',3), grid
xlabel('n'), ylabel('y(n)')
title('Output Signal y2(n) � filter (length = N2)')
disp('%')
disp('%')
disp('% ��� ����������� ������� <ENTER>')
pause 
disp('%')
disp('%')
disp('% �.5. ���������� ���������� ������������ ������� � ���� ������������ ���������� ����������')
disp('%')
disp('%')
disp('%��� ������ ����� (q) � ������� (p) � �������������� ����� � ������������ �������� (K) ������� <ENTER>')
pause
[q,p,K] = tf2zpk(b,a)  % ���� (q) � ������ (p) � �������������� ����� � ����������� �������� (K)
disp('%')
disp('%��� ������ ����� (q) � ������������� ����� ������� <ENTER>')
pause
disp('% rq - �������, wq - ��������� �����')
rq = abs(q)           % ������� ���������� ����������� ����� 
wq = angle(q)         % ��������� ���������� ����������� �����
disp('%��� ������ ������� (p) � ������������� ����� ������� <ENTER>')
pause
disp('% rp - �������, wp - ��������� �������')
rp = abs(p)           % ������� ���������� ����������� �������
wp = angle(p)         % ��������� ���������� ����������� �������
disp('%')
disp('%')
disp('% ��� ����������� ������� <ENTER>')
pause 
disp('%')
disp('%')
disp('% �.6. ���������� ���������� ������������ ������� � ���� ������������ ���������� ������� �������') 
disp('%')
disp('%')
disp('% ��� ������ ������� ������������� (s) � ������������ �������� (G) ������� <ENTER>')
pause
[s,G] = tf2sos(b,a) % ������������ (s) � ����������� �������� (G)
disp('%')
disp('%')
disp('% ��� ����������� ������� <ENTER>')
pause 
disp('%')
disp('%')
disp('% �.7. ���������� ���������� ������������ ������� � ���� ����� ������� ������')
disp('%')
disp('%')
disp('% ��� ������ ������������� ���������� (r), ������� (p) � ����� ����� (c) ������� <ENTER>')
pause
[r,p,c] = residuez(b,a)  % ����������� ���������� (r) � ������ (p) � �������������� ����� � ����� ����� (c)
disp('%')
disp('%��� ������ ������������� ���������� (r) � ������������� ����� ������� <ENTER>')
pause
rr = abs(r)           % ������� ���������� ����������� ������������� ���������� (r)
wr = angle(r)         % ��������� ���������� ����������� ������������� ���������� (r)
disp('%')
disp('%')
disp('% ��� ����������� ������� <ENTER>')
pause 
disp('%')
disp('%')
disp('% �.8. ����� ����� ����� � �������')
disp('%')
disp('%')
disp('% ��� ������ ����� ����� � ������� ������� <ENTER>')
pause
figure('Name',' Z-plane zero-pole plot','NumberTitle', 'off')
zplane(b,a), title('Z-plane zero-pole plot'), grid
xlabel('Re'), ylabel('jIm')
disp('%')
disp('%')
disp('% ��� ����������� ������� <ENTER>')
pause 
disp('%')
disp('%')
disp('% �.9.���������� ��� � ��� � ����� ������������� ������')
disp('%')
disp('%')
disp('% ��� ������ �������� ��� � ��� � ����� ������������� ������ ������� <ENTER>')
pause
w = 0:pi/100:pi;       % ������ ������������� ������ (���)
H_w = freqz(b,a,w);    % ����������� ��������� ��������������
MAG_w = abs(H_w);      % ���
PHASE_w = angle(H_w);  % ���
figure('Name','Magnitude and Phase Responses','NumberTitle', 'off')
subplot(2,2,1), plot(w,MAG_w), grid, xlabel('w (rad)'), title('MAGNITUDE - |�(w)|')
subplot(2,2,3), plot(w,PHASE_w), grid, xlabel('w (rad)'), title('PHASE � arg [H(w)]  (rad)')
disp('%')
disp('%')
disp('% ��� ����������� ������� <ENTER>')
pause 
disp('%')
disp('%')
disp('% �.10. ���������� ��� � ��� � ����� ���������� ������')
disp('%')
disp('%')
disp('% ��� ������ �������� ��� � ��� � ����� ���������� ������ ������� <ENTER>')
pause 
f = 0:Fs/100:Fs/2;     % ������ ���������� ������ (��)
H = freqz(b,a,f,Fs);   % ����������� ��������� ��������������
MAG = abs(H);          % ���
PHASE = angle(H);      % ���
subplot(2,2,2), plot(f,MAG), grid, xlabel('f (Hz)'), title('MAGNITUDE - |�(f)|')
subplot(2,2,4), plot(f,PHASE), grid, xlabel('f (Hz)'), title('PHASE � arg [H(f)] (rad)')
disp('%')
disp('%')
disp('% ��� ����������� ������� <ENTER>')
pause 
disp('%')
disp('%')
disp('% �.11. �������� ��������� ������������ �����')
disp('%')
disp('%')
disp('% ��� ������ ������� �������� dfilt ������� <ENTER>')
pause
Hd1 = dfilt.df1(b,a)   % ������ ��������� (Direct-Form I)
Hd2 = dfilt.df2(b,a)   % ������ ������������ ��������� (Direct-Form II) 
Hd3 = dfilt.df1t(b,a)  % ������ ����������������� ��������� (Direct-Form I Transposed)
Hd4 = dfilt.df2t(b,a)  % ������ ������������ ����������������� ��������� (Direct-Form I Transposed) 
disp('% ��� ����������� ������� <ENTER>')
pause 
disp('%')
disp('%')
disp('% �.12. ������ ������� ����� � ������� �� ��� ���')
disp('%')
disp('%')
b(1,:) = [1 0 0];      % ������������ ��������� � 1-� ������ �������
b(2,:) = [1 0 0];      % ������������ ��������� � 2-� ������ �������
b(3,:) = [1 0 0];      % ������������ ��������� � 3-� ������ �������
b(4,:) = [1 1 0];      % ������������ ��������� � 4-� ������ �������
a(1,:) = a;                   % ������������ ����������� � 1-� ������ ������� 
a(2,:)=[1 -a(1,2) a(1,3)];    % ������������ ����������� � 2-� ������ �������
a(3,:)=[1 a(1,2) 1.2*a(1,3)]; % ������������ ����������� � 3-� ������ �������
a(4,:)=[1 a(1,2) a(1,3)];     % ������������ ����������� � 4-� ������ �������
w = 0:pi/100:pi;              % ������ ������������� ������ (���)
for i=1:4 
H3(:,i) = freqz(b(i,:),a(i,:),w);   % ��������� �������������� � i-� ������� �������  
MAG3(:,i) = abs(H3(:,i)); MAX(:,i) = max(MAG3(:,i));   % ���  � i-� ������� ������� � � �������� ��� 
MAGN(:,i) = MAG3(:,i)/MAX(:,i);     % ������������� ��� � i-� ������� �������
end
disp('%  ��� ������ ����� ����� � ������� � ������������� ��� ������� <ENTER>')
pause
figure('Name','Z-plane zero-pole plots and Normalized Magnitudes','NumberTitle', 'off')
for i = 1:4
subplot(4,2,2*i-1), zplane(b(i,:),a(i,:)), title('Z-plane zero-pole plot'), grid
xlabel('Re'), ylabel('jIm')
subplot(4,2,2*i), plot(w,MAGN(:,i)), grid
xlabel('w (rad)'), title('Normalized Magnitude A(w)')
end
disp('%')
disp('%')
disp('% ������ ���������')


































script
clc
clear
disp('% �� �7. ���������� �������')
disp('%')
disp('%')
disp('% ������� �������� ������');
DATA=0;
while DATA==0
Nb = input('Nb = ');            % ����� �������
N = input('N = ');              % ����� ������������������
T = input('T = ');              % ������ �������������
a = input('a = ');              % ��������� ���������� ����������
C = input('C = ');      % ��������� ����������� �������������� �������
w0 = input('w0 = ');    % ������� ����������� �������������� �������
m = input('m = ');              % �������� ��������
U = input('U = ');              % ��������� ��������
n0 = input('n0 = ');            % ������ ������ ��������
n_imp = input('n_imp = ');      % ������������ ��������
B = input('B = ');              % ������ ��������
w = input('w = ');              % ������ ������ 
A = input('A = ');        % ������ ������������� �������� ����������
Mean = input('Mean = ');  % �������� �������������� �������� ����
Var = input('Var = ');    % �������� ��������� ���� 
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
disp('% �.1. �������� ��������� �������')
disp('%')
disp('%')
disp('% ��� ������ �������� ��������� ���������� �������� ������� <ENTER>')
pause 
n = 0:(N-1); nT = T.*n;      % ���������� ������������� � ��������������� �����
u0 = [1 zeros(1,(N-1))];     % �������� ��������� �������
figure('Name','Digital Unit Impulse, Unit Step, and Discrete Exponent','NumberTitle', 'off')
subplot(3,2,1),stem(nT,u0,'Linewidth',2), grid
title('Digital Unit Impulse u0(nT)')
subplot(3,2,2),stem(n,u0,'Linewidth',2), grid 
title('Digital Unit Impulse u0(n)')
disp('%')
disp('%')
disp('% ��� ����������� ������� <ENTER>')
pause 
disp('%')
disp('%')
disp('% �.2. �������� ��������� ������');
disp('%')
disp('%')
disp('% ��� ������ �������� ��������� ���������� ������ ������� <ENTER>')
pause 
u1 = [1 ones(1,(N-1))];       % �������� ��������� ������
subplot(3,2,3),stem(nT,u1,'Linewidth',2), grid
title('Digital Unit Step u1(nT)'), 
subplot(3,2,4),stem(n,u1,'Linewidth',2), grid
title('Digital Unit Step u1(n)')
disp('%')
disp('%')
disp('% ��� ����������� ������� <ENTER>')
pause 
disp('%')
disp('%')
disp('% �.3. ���������� ����������')
disp('%')
disp('%')
disp('% ��� ������ �������� ���������� ���������� ������� <ENTER>')
pause
x1 = a.^n;                   % ���������� ����������
subplot(3,2,5),stem(nT,x1,'Linewidth',2), xlabel('nT'), grid
title('Discrete Exponent x1(nT)')
subplot(3,2,6),stem(n, x1,'Linewidth',2), xlabel('n'), grid
title('Discrete Exponent x1(n)'),
disp('%')
disp('%')
disp('% ��� ����������� ������� <ENTER>')
pause 
disp('%')
disp('%')
disp('% �.4. ���������� ����������� ������������� ������')
disp('%')
disp('%')
disp('% ��� ������ �������� ������������ � ������ ������')
disp('% �������������� ������� ������� <ENTER>')
pause 
x2 = C.*exp(j*w0.*n);  % ���������� ����������� ������������� ������
figure('Name','Discrete Harmonic Signal','NumberTitle', 'off')
subplot(2,1,1),stem(n,real(x2) ,'Linewidth',2), grid
title('Discrete Harmonic Signal: REAL [x2(n)]')
subplot(2,1,2),stem(n,imag(x2) ,'Linewidth',2), xlabel('n'), grid
title(' Discrete Harmonic Signal: IMAG [x2(n)]')
disp('%')
disp('%')
disp('% ��� ����������� ������� <ENTER>')
pause 
disp('%')
disp('%')
disp('% �.5. ����������� ������������������')
disp('%')
disp('%')
disp('% ��� ������ �������� ����������� ������������������� ������� <ENTER>')
pause
u0_m = [zeros(1,m) u0(1:(N-m))];    % ����������� �������� ��������� �������
u1_m = [zeros(1,m) u1(1:(N-m))];    % ����������� �������� ��������� ������
x1_m = [zeros(1,m) x1(1:(N-m))];    % ����������� ���������� ����������
figure('Name','Delayed Discrete Signals','NumberTitle', 'off')
subplot(3,1,1),stem(n,u0_m,'Linewidth',2), grid
title ('Delayed Digital Unit Impulse u0(n-m)')
subplot(3,1,2),stem(n,u1_m,'Linewidth',2), grid
title ('Delayed Digital Unit Step u1(n-m)')
subplot(3,1,3),stem(n,x1_m,'Linewidth',2),xlabel('n'), grid
title ('Delayed Discrete Exponent x1(n-m)')
disp('%')
disp('%')
disp('% ��� ����������� ������� <ENTER>')
pause 
disp('%')
disp('%')
disp('% �.6. ���������� ������������� �������')
disp('%')
disp('%')
disp('% ��� ������ �������� ����������� �������������� �������� ������� <ENTER>')
pause
x3_1 = U*rectpuls(n-n0,2*n_imp); x3_1(1:n0) = 0; % ������������ �������� � ������� ������� rectpuls 
x3_2 = [zeros(1,n0) U.*u1((n0+1):(n0+n_imp))...
zeros(1,N-(n0+n_imp))];     % ������������ �������� � ������� ��������� ���������� ������
figure('Name','Discrete Rectangular and Triangular Impulses','NumberTitle', 'off')
subplot(3,1,1),stem(n,x3_1,'Linewidth',2), grid
title('Discrete Rectangular Impulse x3 1(n)')
subplot(3,1,2),stem(n,x3_2,'Linewidth',2), grid
title('Discrete Rectangular Impulse x3 2 (n)')
disp('%')
disp('%')
disp('% ��� ����������� ������� <ENTER>')
pause 
disp('%')
disp('%')
disp('% �.7. ���������� ����������� �������')
disp('%')
disp('%')
disp('% ��� ������ ������� ����������� ������������ �������� ������� <ENTER>')
pause
x4 = conv(x3_1,x3_1);           % ���������� ����������� �������
L = 2*N-1;                      % ����� �������
n = 0:(L-1);                    % ���������� ������������� �����
subplot(3,1,3),stem(n,x4,'Linewidth',2), xlabel('n'), grid
title('Discrete Triangular Impulse x4(n)')
disp('%')
disp('%')
disp('% ��� ����������� ������� <ENTER>')
pause 
disp('%')
disp('%')
disp('% �.8. �������� ���������� ���������� ������������� ��������')
disp('%')
disp('%')
disp('% ��� ������ �������� ������������� �������� � �� �������� ���������� ������� <ENTER>')
pause
n = 0:(5*N-1);                         % ���������� ������������� �����
xi = repmat(B,length(n),1).*sin(n'*w); % ������� ���������� ��������
ai = repmat(A,length(n),1);            % ������� �������������
x5 = sum((ai.* xi)');         % �������� ���������� ���������� ��������
figure('Name','Discrete Harmonic Signals and their Linear Combination','NumberTitle', 'off')
subplot(4,1,1),stem(n, xi(:,1),'Linewidth',2), grid
title('First Discrete Harmonic Signal')
subplot(4,1,2),stem(n, xi(:,2),'Linewidth',2), grid
title('Second Discrete Harmonic Signal')
subplot(4,1,3),stem(n, xi(:,3),'Linewidth',2), grid
title('Third Discrete Harmonic Signal')
subplot(4,1,4),stem(n,x5,'Linewidth',2), xlabel('n'), grid
title('Linear Combination x5(n)') 
disp('%')
disp('%')
disp('% ��� ������ �������� ��������, ������� � ������� �������� ������� x5 ������� <ENTER>')
pause
mean_x5 = mean(x5);               % ������� �������� �������
E = sum(x5.^2);                   % ������� �������
P = sum(x5.^2)/length(x5);        % ������� �������� �������
disp('%')
disp('%')
disp(['  mean_x5 = ' num2str(mean_x5) '  E = ' num2str(E) '  P = ' num2str(P)])
disp('%')
disp('%')
disp('% ��� ����������� ������� <ENTER>')
pause 
disp('%')
disp('%')
disp('% �.9. ���������� ������������� ������ � ���������������� ���������')
disp('%')
disp('%')
disp('% ��� ������ ������� �������������� ������� � ���������������� ��������� ������� <ENTER>')
pause 
n = 0:(N-1);                       % ���������� ������������� �����
x = C.*sin(w0.*n);                 % ���������� ������������� ������
x6 = x.*(abs(a).^n);               % ���������� ������������� ������ � ���������������� ���������
figure('Name','Harmonic Signal with Exponential Envelope.  Periodic Sequence of Rectangular Impulses','NumberTitle', 'off')
subplot(2,1,1),stem(n,x6,'Linewidth',2), grid
title('Harmonic Signal with Exponential Envelope x6(n)')
disp('%')
disp('%')
disp('% ��� ����������� ������� <ENTER>')
pause 
disp('%')
disp('%')
disp('% �.10. ������������� ������������������ ���������� ������������� ���������')
disp('%')
disp('%')
disp('% ��� ������ ������� ���� �������� ������������������ ������� <ENTER>')
pause
xp = [U.*u1(1:n_imp) zeros(1,n_imp)];    % ������ ������������������
p = 5;                                   % ����� �������� 
x7 =  repmat(xp,1,p);             % ������������� ������������������
n = 0:(length(x7)-1);             % ���������� ������������� �����
subplot(2,1,2), stem(n,x7,'Linewidth',2), xlabel('n'), grid
title('Periodic Sequence of Rectangular Impulses x7(n)') 
disp('%')
disp('%')
disp('% ��� ����������� ������� <ENTER>')
pause 
disp('%')
disp('%')
disp('% �.11. ����������� ����� ���')
disp('%')
disp('%')
disp('% ��� ������ ������ ��������������� �������� � ��������� ���� ������� <ENTER>')
pause
r_uniform = rand(1,10000);           % ����������� ����� ���
mean_uniform = mean(r_uniform);      % ������ ���. �������� ����
var_uniform = var(r_uniform);        % ������ ��������� ����
disp('%')
disp('%')
disp(['  mean_uniform = ' num2str(mean_uniform) '  var_uniform = ' num2str(var_uniform)]) 
disp('%')
disp('%')
disp('% ��� ������ ������� ������������������ ������� ������� <ENTER>')
pause
r_r_uniform = (1/length(r_uniform)).*xcov(r_uniform);   % ������ ������������������ ������� ������������ ������ ����
m = -(length(r_uniform)-1):(length(r_uniform)-1);       % ������ ���������� ������� ��� ������������������ ������� 
figure('Name','Autocovariance Function of Uniform White Noise','NumberTitle', 'off')
stem(m,r_r_uniform,'Linewidth',2), xlabel('m'), grid
title('Autocovariance Function of Uniform White Noise')
disp('%')
disp('%')
disp('% ��� ����������� ������� <ENTER>')
pause 
disp('%')
disp('%')
disp('% �.12. ���������� ����� ���')
disp('%')
disp('%')
disp('% ��� ������ ������ ��������������� �������� � ��������� ���� ������� <ENTER>')
pause
r_norm = randn(1,10000);           % ���������� ����� ���
mean_norm = mean(r_norm);          % ������ ���. �������� ����
var_norm = var(r_norm);            % ������ ��������� ����
disp('%')
disp('%')
disp(['  mean_norm = ' num2str(mean_norm) '  var_norm = ' num2str(var_norm)]) 
disp('%')
disp('%')
disp('% ��� ������ ������� ��� ������� <ENTER>')
pause
R_r_norm = (1/length(r_norm)).*xcorr(r_norm);   % ������ ��� ����������� ������ ���� 
m = -(length(r_norm)-1):(length(r_norm)-1);     % ������ ���������� ������� ��� ��� 
figure('Name','ACF of White Gaussian Noise','NumberTitle', 'off')
stem(m,R_r_norm,'Linewidth',2), xlabel('m'), grid
title('ACF of White Gaussian Noise')
disp('%')
disp('%')
disp('% ��� ����������� ������� <ENTER>')
pause
disp('%')
disp('%')
disp('% �.13. ���������� ����� ����������� �������������� ������� � ���������� ����� �����')
disp('%')
disp('%')
disp('% ��� ������ ������� ���������� ����� ������� � ����� ������� <ENTER>')
pause
n = 0:(N-1);                     % ���������� ������������� �����
x8 = x+randn(1,N);               % ���������� ����� ������� � �����
figure('Name','Mixture of Harmonic Signal and White Gaussian Noise and ACF','NumberTitle', 'off')
subplot(2,1,1),stem(n,x8,'Linewidth',2),xlabel('n'), grid
title('Mixture of Harmonic Signal and White Gaussian Noise x8(n)')
disp('%')
disp('%')
disp('% ��� ����������� ������� <ENTER>')
pause 
disp('%')
disp('%')
disp('% �.14. ��� ���������� ����� ����������� �������������� ������� � ���������� ����� �����')
disp('%')
disp('%')
disp('% ��� ������ ������� ��� ������� <ENTER>')
pause 
R = (1/N).*xcorr(x8);            % ������ ��� 
m = -(N-1):(N-1);                % ������ ���������� ������� ��� ��� 
subplot(2,1,2),stem((m),R,'Linewidth',2),xlabel('m'), grid
title('ACF R(m)')
disp('%')
disp('%')
disp('% ��� ������ ��������� ���������� ����� ������� � ����� � ��� R(N) ������� <ENTER>') 
pause 
disp('%')
disp('%')
disp(['  var_x8 = ' num2str(var(x8))])
disp(['  R(N) = ' num2str(R(N))])
disp('%')
disp('%')
disp('% ��� ����������� ������� <ENTER>')
pause 
disp('%')
disp('%')
disp('% �.15. ���������� ����� ��� � ��������� ��������������� ����������������')
r_normMean = randn(1,10000)+Mean;      % ���������� ����� ��� � �������� �������������� ���������
r_normVar = sqrt(Var).*randn(1,10000); % ���������� ����� ��� � �������� ����������
r_normMeanVar = sqrt(Var).*randn(1,10000)+ Mean; % ���������� ����� ��� � ��������� �������������� ��������� � ����������
MAX = max([r_norm r_normMean r_normVar r_normMeanVar]); 
% ������������ �������� ���� ����� ������� ��� ��������������
disp('%')
disp('%')
disp('% ��� ������ �������� ����������� ������ ���� ������� <ENTER>')
pause
figure('Name','White Gaussian Noises with different statistics','NumberTitle', 'off')
subplot(4,1,1), plot(r_norm), grid, ylim([-MAX MAX])
title(strcat([' Mean value = ',num2str(mean(r_norm)),'   Variance = ',num2str(var(r_norm))]))
subplot(4,1,2), plot(r_normMean), grid, ylim([-MAX MAX])
title(strcat([' Mean value = ',num2str(mean(r_normMean)),'   Variance = ',num2str(var(r_normMean))]))
subplot(4,1,3), plot(r_normVar), grid, ylim([-MAX MAX])
title(strcat([' Mean value = ',num2str(mean(r_normVar)),'   Variance = ',num2str(var(r_normVar))]))
subplot(4,1,4), plot(r_normMeanVar), xlabel('n'), grid, ylim([-MAX MAX])
title(strcat([' Mean value = ',num2str(mean(r_normMeanVar)),'   Variance = ',num2str(var(r_normMeanVar))]))
disp('%')
disp('%')
disp('% ��� ������ ���������� ����������� ������ ���� ������� <ENTER>')
pause
figure('Name','Histograms with different statistics','NumberTitle', 'off')
subplot(4,1,1), hist(r_norm), grid, xlim([-MAX MAX]) 
title(strcat([' Mean value = ',num2str(mean(r_norm)),'   Variance = ',num2str(var(r_norm))]))
subplot(4,1,2), hist(r_normMean), grid, xlim([-MAX MAX])
title(strcat([' Mean value =  ',num2str(mean(r_normMean)),'   Variance = ',num2str(var(r_normMean))]))
subplot(4,1,3), hist(r_normVar), grid, xlim([-MAX MAX])
title(strcat([' Mean value = ',num2str(mean(r_normVar)),'   Variance = ',num2str(var(r_normVar))]))
subplot(4,1,4),hist(r_normMeanVar), grid, xlim([-MAX MAX])
title(strcat([' Mean value = ',num2str(mean(r_normMeanVar)),'   Variance = ',num2str(var(r_normMeanVar))]))
disp('%')
disp('%')
disp('% ������ ���������')
















































































script
clc
clear
disp('% ЛР №8. ЛИНЕЙНЫЕ ДИСКРЕТНЫЕ СИСТЕМЫ')
disp('%')
disp('%')
disp('% Введите ИСХОДНЫЕ ДАННЫЕ');
DATA=0;
while DATA==0
Nb = input('Nb = ');   % НОМЕР БРИГАДЫ
b = input('b = ');     % ВЕКТОР КОЭФФИЦИЕНТОВ ЧИСЛИТЕЛЯ ПЕРЕДАТОЧНОЙ ФУНКЦИИ
a = input('a = ');     % ВЕКТОР КОЭФФИЦИЕНТОВ ЗНАМЕНАТЕЛЯ ПЕРЕДАТОЧНОЙ ФУНКЦИИ
N1 = input('N1 = ');   % ДЛИНА ИМПУЛЬСНОЙ ХАРАКТЕРИСТИКИ
N2 = input('N2 = ');   % ДЛИНА ВОЗДЕЙСТВИЯ
Fs = input('Fs = ');   % ЧАСТОТА ДИСКРЕТИЗАЦИИ
disp('% Проверьте ПРАВИЛЬНОСТЬ ввода ИСХОДНЫХ ДАННЫХ')
disp('% При ПРАВИЛЬНЫХ ИСХОДНЫХ ДАННЫХ введите 1')
disp('% При НЕПРАВИЛЬНЫХ ИСХОДНЫХ ДАННЫХ введите 0 и ПОВТОРИТЕ ввод')
DATA = input('--> '); 
end 
disp('%')
disp('%')
disp('% Для продолжения нажмите <ENTER>')
pause 
disp('%')
disp('%')
disp('% п.1. ВЫЧИСЛЕНИЕ ИМПУЛЬСНОЙ ХАРАКТЕРИСТИКИ - функция impz')
disp('%')
disp('%')
disp('% Для вывода ГРАФИКА ИМПУЛЬСНОЙ ХАРАКТЕРИСТИКИ нажмите <ENTER>')
pause 
h1 = impz(b,a,N1);          % ИМПУЛЬСНАЯ ХАРАКТЕРИСТИКА
n = 0:(N1-1);               % ДИСКРЕТНОЕ НОРМИРОВАННОЕ ВРЕМЯ ДЛЯ ИХ
figure('Name','Impulse Response','NumberTitle', 'off')
subplot(2,1,1), stem(n,h1,'fill','MarkerSize',3), grid
xlabel('n'), ylabel('h(n)')
title('Impulse Response h(n) - impz')
disp('%')
disp('%')
disp('% Для продолжения нажмите <ENTER>')
pause 
disp('%')
disp('%')
disp('% п.2. ВЫЧИСЛЕНИЕ ИМПУЛЬСНОЙ ХАРАКТЕРИСТИКИ - функция filter')
disp('%')
disp('%')
disp('% Для вывода ГРАФИКА ИМПУЛЬСНОЙ ХАРАКТЕРИСТИКИ нажмите <ENTER>')
pause 
u0 = [1 zeros(1,(N1-1))];    % ЦИФРОВОЙ ЕДИНИЧНЫЙ ИМПУЛЬС
h2 = filter(b,a,u0);         % ИМПУЛЬСНАЯ ХАРАКТЕРИСТИКА
subplot(2,1,2), stem(n,h2,'fill','MarkerSize',3), grid
xlabel('n'), ylabel('h(n)'), title('Impulse Response h(n) - filter')
disp('%')
disp('%')
disp('% Для продолжения нажмите <ENTER>')
pause 
disp('%')
disp('%')
disp('% п.3. ВЫЧИСЛЕНИЕ РЕАКЦИИ ПО ФОРМУЛЕ СВЕРТКИ')
disp('%')
disp('%')
disp('% Для вывода ГРАФИКОВ ВОЗДЕЙСТВИЯ И РЕАКЦИИ, вычисленной по ФОРМУЛЕ СВЕРТКИ,  нажмите <ENTER>')
pause
x = input_1(N2);    % ВОЗДЕЙСТВИЕ (ДИСКРЕТНЫЙ ПРЯМОУГОЛЬНЫЙ ИМПУЛЬС)  
y1 = conv(x,h1);    % РЕАКЦИЯ ДЛИНЫ, РАВНОЙ ДЛИНЕ СВЕРТКИ
L = N1+N2-1;        % ДЛИНА СВЕРТКИ
n = 0:(N2-1);       % ДИСКРЕТНОЕ НОРМИРОВАННОЕ ВРЕМЯ ДЛЯ ВОЗДЕЙСТВИЯ
n1 = 0:(L-1);       % ДИСКРЕТНОЕ НОРМИРОВАННОЕ ВРЕМЯ ДЛЯ СВЕРТКИ
figure('Name','Input and Output Signals','NumberTitle', 'off')
subplot(4,1,1), stem(n,x,'fill','MarkerSize',3), grid, xlabel('n')
ylabel('x(n)'), title('Input Signal - Discrete Rectangular Impulse x(n)')
subplot(4,1,2), stem(n1,y1,'fill','MarkerSize',3), grid
ylabel('y(n)'), title('Output Signal y1(n) – conv (length = L)')
subplot(4,1,3), stem(n,y1(1:N2),'fill','MarkerSize',3), grid
xlabel('n'), ylabel('y1(n)')
title('Output Signal y1(n) – conv (length = N2)')
disp('%')
disp('%')
disp('% Для продолжения нажмите <ENTER>')
pause 
disp('%')
disp('%')
disp('% п.4. ВЫЧИСЛЕНИЕ РЕАКЦИИ ПО РАЗНОСТНОМУ УРАВНЕНИЮ')
disp('%')
disp('%')
disp('% Для вывода ГРАФИКА РЕАКЦИИ, вычисленной по РАЗНОСТНОМУ УРАВНЕНИЮ, нажмите <ENTER>')
pause 
y2 = filter(b,a,x);  % РЕАКЦИЯ ЛДС 
subplot(4,1,4), stem(n,y2,'fill','MarkerSize',3), grid
xlabel('n'), ylabel('y(n)')
title('Output Signal y2(n) – filter (length = N2)')
disp('%')
disp('%')
disp('% Для продолжения нажмите <ENTER>')
pause 
disp('%')
disp('%')
disp('% п.5. ВЫЧИСЛЕНИЕ ПАРАМЕТРОВ ПЕРЕДАТОЧНОЙ ФУНКЦИИ В ВИДЕ ПРОИЗВЕДЕНИЯ ПРОСТЕЙШИХ МНОЖИТЕЛЕЙ')
disp('%')
disp('%')
disp('%Для ВЫВОДА нулей (q) и полюсов (p) В АЛГЕБРАИЧЕСКОЙ ФОРМЕ и коэффициента усиления (K) нажмите <ENTER>')
pause
[q,p,K] = tf2zpk(b,a)  % НУЛИ (q) И ПОЛЮСЫ (p) В АЛГЕБРАИЧЕСКОЙ ФОРМЕ И КОЭФФИЦИЕНТ УСИЛЕНИЯ (K)
disp('%')
disp('%Для ВЫВОДА нулей (q) в ПОКАЗАТЕЛЬНОЙ ФОРМЕ нажмите <ENTER>')
pause
disp('% rq - РАДИУСЫ, wq - АРГУМЕНТЫ нулей')
rq = abs(q)           % РАДИУСЫ КОМПЛЕКСНО СОПРЯЖЕННЫХ НУЛЕЙ 
wq = angle(q)         % АРГУМЕНТЫ КОМПЛЕКСНО СОПРЯЖЕННЫХ НУЛЕЙ
disp('%Для ВЫВОДА полюсов (p) в ПОКАЗАТЕЛЬНОЙ ФОРМЕ нажмите <ENTER>')
pause
disp('% rp - РАДИУСЫ, wp - АРГУМЕНТЫ полюсов')
rp = abs(p)           % РАДИУСЫ КОМПЛЕКСНО СОПРЯЖЕННЫХ ПОЛЮСОВ

wp = angle(p)         % АРГУМЕНТЫ КОМПЛЕКСНО СОПРЯЖЕННЫХ ПОЛЮСОВ
disp('%')
disp('%')
disp('% Для продолжения нажмите <ENTER>')
pause 
disp('%')
disp('%')
disp('% п.6. ВЫЧИСЛЕНИЕ ПАРАМЕТРОВ ПЕРЕДАТОЧНОЙ ФУНКЦИИ В ВИДЕ ПРОИЗВЕДЕНИЯ МНОЖИТЕЛЕЙ ВТОРОГО ПОРЯДКА') 
disp('%')
disp('%')
disp('% Для ВЫВОДА матрицы коэффициентов (s) и коэффициента усиления (G) нажмите <ENTER>')
pause
[s,G] = tf2sos(b,a) % КОЭФФИЦИЕНТЫ (s) И КОЭФФИЦИЕНТ УСИЛЕНИЯ (G)
disp('%')
disp('%')
disp('% Для продолжения нажмите <ENTER>')
pause 
disp('%')
disp('%')
disp('% п.7. ВЫЧИСЛЕНИЕ ПАРАМЕТРОВ ПЕРЕДАТОЧНОЙ ФУНКЦИИ В ВИДЕ СУММЫ ПРОСТЫХ ДРОБЕЙ')
disp('%')
disp('%')
disp('% Для ВЫВОДА коэффициентов разложения (r), полюсов (p) и целой части (c) нажмите <ENTER>')
pause
[r,p,c] = residuez(b,a)  % КОЭФФИЦИНТЫ РАЗЛОЖЕНИЯ (r) и ПОЛЮСЫ (p) В АЛГЕБРАИЧЕСКОЙ ФОРМЕ И ЦЕЛАЯ ЧАСТЬ (c)
disp('%')
disp('%Для ВЫВОДА КОЭФФИЦИЕНТОВ РАЗЛОЖЕНИЯ (r) в ПОКАЗАТЕЛЬНОЙ ФОРМЕ нажмите <ENTER>')
pause
rr = abs(r)           % РАДИУСЫ КОМПЛЕКСНО СОПРЯЖЕННЫХ КОЭФФИЦИЕНТОВ РАЗЛОЖЕНИЯ (r)
wr = angle(r)         % АРГУМЕНТЫ КОМПЛЕКСНО СОПРЯЖЕННЫХ КОЭФФИЦИЕНТОВ РАЗЛОЖЕНИЯ (r)
disp('%')
disp('%')
disp('% Для продолжения нажмите <ENTER>')
pause 
disp('%')
disp('%')
disp('% п.8. ВЫВОД КАРТЫ НУЛЕЙ И ПОЛЮСОВ')
disp('%')
disp('%')
disp('% Для ВЫВОДА КАРТЫ НУЛЕЙ И ПОЛЮСОВ нажмите <ENTER>')
pause
figure('Name',' Z-plane zero-pole plot','NumberTitle', 'off')
zplane(b,a), title('Z-plane zero-pole plot'), grid
xlabel('Re'), ylabel('jIm')
disp('%')
disp('%')
disp('% Для продолжения нажмите <ENTER>')
pause 
disp('%')
disp('%')
disp('% п.9.ВЫЧИСЛЕНИЕ АЧХ и ФЧХ В ШКАЛЕ НОРМИРОВАННЫХ ЧАСТОТ')
disp('%')
disp('%')
disp('% Для вывода ГРАФИКОВ АЧХ и ФЧХ с шкале НОРМИРОВАННЫХ частот нажмите <ENTER>')
pause
w = 0:pi/100:pi;       % ВЕКТОР НОРМИРОВАННЫХ ЧАСТОТ (РАД)
H_w = freqz(b,a,w);    % КОМПЛЕКСНАЯ ЧАСТОТНАЯ ХАРАКТЕРИСТИКА
MAG_w = abs(H_w);      % АЧХ
PHASE_w = angle(H_w);  % ФЧХ
figure('Name','Magnitude and Phase Responses','NumberTitle', 'off')
subplot(2,2,1), plot(w,MAG_w), grid, xlabel('w (rad)'), title('MAGNITUDE - |Н(w)|')
subplot(2,2,3), plot(w,PHASE_w), grid, xlabel('w (rad)'), title('PHASE – arg [H(w)]  (rad)')
disp('%')
disp('%')
disp('% Для продолжения нажмите <ENTER>')
pause 
disp('%')
disp('%')
disp('% п.10. ВЫЧИСЛЕНИЕ АЧХ и ФЧХ В ШКАЛЕ АБСОЛЮТНЫХ ЧАСТОТ')
disp('%')
disp('%')
disp('% Для вывода ГРАФИКОВ АЧХ и ФЧХ в шкале АБСОЛЮТНЫХ частот нажмите <ENTER>')
pause 
f = 0:Fs/100:Fs/2;     % ВЕКТОР АБСОЛЮТНЫХ ЧАСТОТ (Гц)
H = freqz(b,a,f,Fs);   % КОМПЛЕКСНАЯ ЧАСТОТНАЯ ХАРАКТЕРИСТИКА
MAG = abs(H);          % АЧХ
PHASE = angle(H);      % ФЧХ
subplot(2,2,2), plot(f,MAG), grid, xlabel('f (Hz)'), title('MAGNITUDE - |Н(f)|')
subplot(2,2,4), plot(f,PHASE), grid, xlabel('f (Hz)'), title('PHASE – arg [H(f)] (rad)')
disp('%')
disp('%')
disp('% Для продолжения нажмите <ENTER>')
pause 
disp('%')
disp('%')
disp('% п.11. ОПИСАНИЕ СТРУКТУРЫ РЕКУРСИВНОГО ЗВЕНА')
disp('%')
disp('%')
disp('% Для вывода СВОЙСТВ ОБЪЕКТОВ dfilt нажмите <ENTER>')
pause
Hd1 = dfilt.df1(b,a)   % ПРЯМАЯ СТРУКТУРА (Direct-Form I)
Hd2 = dfilt.df2(b,a)   % ПРЯМАЯ КАНОНИЧЕСКАЯ СТРУКТУРА (Direct-Form II) 
Hd3 = dfilt.df1t(b,a)  % ПРЯМАЯ ТРАНСПОНИРОВАННАЯ СТРУКТУРА (Direct-Form I Transposed)
Hd4 = dfilt.df2t(b,a)  % ПРЯМАЯ КАНОНИЧЕСКАЯ ТРАНСПОНИРОВАННАЯ СТРУКТУРА (Direct-Form I Transposed) 
disp('% Для продолжения нажмите <ENTER>')
pause 
disp('%')
disp('%')
disp('% п.12. АНАЛИЗ ВЛИЯНИЯ НУЛЕЙ И ПОЛЮСОВ НА ВИД АЧХ')
disp('%')
disp('%')
b(1,:) = [1 0 0];      % КОЭФФИЦИЕНТЫ ЧИСЛИТЕЛЯ – 1-я СТРОКА МАТРИЦЫ
b(2,:) = [1 0 0];      % КОЭФФИЦИЕНТЫ ЧИСЛИТЕЛЯ – 2-я СТРОКА МАТРИЦЫ
b(3,:) = [1 0 0];      % КОЭФФИЦИЕНТЫ ЧИСЛИТЕЛЯ – 3-я СТРОКА МАТРИЦЫ
b(4,:) = [1 1 0];      % КОЭФФИЦИЕНТЫ ЧИСЛИТЕЛЯ – 4-я СТРОКА МАТРИЦЫ
a(1,:) = a;                   % КОЭФФИЦИЕНТЫ ЗНАМЕНАТЕЛЯ – 1-я СТРОКА МАТРИЦЫ 
a(2,:)=[1 -a(1,2) a(1,3)];    % КОЭФФИЦИЕНТЫ ЗНАМЕНАТЕЛЯ – 2-я СТРОКА МАТРИЦЫ
a(3,:)=[1 a(1,2) 1.2*a(1,3)]; % КОЭФФИЦИЕНТЫ ЗНАМЕНАТЕЛЯ – 3-я СТРОКА МАТРИЦЫ
a(4,:)=[1 a(1,2) a(1,3)];     % КОЭФФИЦИЕНТЫ ЗНАМЕНАТЕЛЯ – 4-я СТРОКА МАТРИЦЫ

w = 0:pi/100:pi;              % ВЕКТОР НОРМИРОВАННЫХ ЧАСТОТ (РАД)
for i=1:4 
H3(:,i) = freqz(b(i,:),a(i,:),w);   % ЧАСТОТНАЯ ХАРАКТЕРИСТИКА – i-й СТОЛБЕЦ МАТРИЦЫ  
MAG3(:,i) = abs(H3(:,i)); MAX(:,i) = max(MAG3(:,i));   % АЧХ  – i-й СТОЛБЕЦ МАТРИЦЫ – И МАКСИМУМ АЧХ 
MAGN(:,i) = MAG3(:,i)/MAX(:,i);     % НОРМИРОВАННАЯ АЧХ – i-й СТОЛБЕЦ МАТРИЦЫ
end
disp('%  Для вывода КАРТЫ НУЛЕЙ И ПОЛЮСОВ и НОРМИРОВАННОЙ АЧХ нажмите <ENTER>')
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
disp('% РАБОТА ЗАВЕРШЕНА')
��    j      l  �   �      	     	     	     	     +	     =	     C	  6   O	     �	     �	     �	     �	     �	     �	     
     ,
     ;
     G
     ]
  
   k
  "   v
     �
  &   �
     �
     �
     �
  "     .   /  <   ^  ,   �      �  �   �     �     �  $   �     �  )   �       ,   /     \     t     �  "   �     �  4   �            4   7     l  "   q     �  B   �     �     �  ?        O     l     �     �     �     �     �     �     �  
             6     I     b     r     {     �  '   �     �     �     �  
               !   0     R     i        1   �  -   �  !         "  9   8     r  
   �     �  	   �     �     �  0   �  "     !   &     H  \   ]  \   �          #     '     8     I     ^  +  r  
   �     �  )   �  )   �     �       j   '  r   �  &        ,  #   C  (   g  7   �  &   �     �       '   &  !   N     p  ?   �     �  N   �  C   0  *   t  4   �  I   �  K     �   j  k   �  ?   \  u  �       <     J   X     �  S   �  -     S   E  6   �  *   �     �  M      @   h   m   �   ,   !     D!  S   ^!     �!  M   �!  	   "  �   "  3   �"  &   .#  ~   U#  1   �#     $  )   !$     K$     j$     �$     �$  *   �$  *   �$     %  ,   7%  "   d%  B   �%     �%     �%     �%     &  l   3&  0   �&  ,   �&  3   �&  '   2'  !   Z'  A   |'  E   �'  8   (  2   =(  Q   p(  Q   �(  H   )  S   ])     �)  c   �)  "   1*     T*     t*     �*     �*  C   �*  Z   +  2   c+  1   �+     �+  u   �+  u   R,     �,     �,     �,     �,  +   -  )   G-         `   	   &      S               G   L              a          4   I       d   1       T           R       g   U       O   ;   
   @      ]          #       ?          "   W             V          Q      e                      %           .   P          i   B      :   _   Z              (   K                            '   6                /   A      7   )       5   ,   =       f   2   8   N           H       J   \   ^   Y   0           C   +   <   9   E   [   D   $   X                             3   M   h              F   b   *   >       !   c   -   j    &Quit 1 1st user RSA keys 2nd user RSA keys About Attack type Attack using multiplicative property of RSA encryption Blinding attack C^e^k mod n == C, where k is: Calculate "d" Calculate C' = C*x^e mod n Calculate M = M' * x^(-1) mod n Calculation of "d" of 2nd user Chosen message: Ciphertext #%d Ciphertext: Common modulus attack Cyclic attack Decrypt C' Discovered secret exponent "d" is: Encrypt Encrypt random message from above list Evaluate CRT solution Execute Wiener's attack Execute cyclic attack Execute generalized cycling attack Factoring "n" given both exponents "e" and "d" Factoring modulus knowing both exponents (secret and public) Failed to apply Cyclic attack in %i seconds! Failed to apply Wiener's attack! Failed to find message in %i seconds using linear search! Aborted.
Generate a new list of possible messages with lower number of messages or decrease the size of RSA modulus. File Find corresponding message Find cube root using Newton's method Find factors of "n" Find the smallest 'k' such that C^e^k = C Generate 
 RSA keys Generate 2 RSA key sets
using common modulus Generate 3 RSA key sets Generate RSA keys Generate coprime "x" Generate list of possible messages Generate random message Given ciphertext corresponds to possible message #%i Given ciphertext: Hastad's broadcast attack Hastad's broadcast attack on small public exponent e Help Initialize random number generator Language Linear search of encrypted message from the list of known messages List of possible messages: Message to encrypt: None of given possible messages corresponds to given ciphertext Number of possible messages: Please choose language: Possible message #%d Prime number "p" is: Prime number "q" is: Prime number 'p': Prime number 'q': Public exponent "e" is: Public exponent 'e': Public key Public modulus "n" is: Quit from programm RSA Attacks lab activity RSA key length: RSA keys RSA modulus 'n': RSA modulus length: Random "x" from coprime to RSA modulus: Random numbers generator Secret exponent 'd': Secret exponent length: Secret key Seed Set seed manually Small amount of possible messages Small private exponent Small public exponent The entered value is not integer The message should be between 1 and n-1 inclusive This language is not supported by the system. Thus message M = C^e^(k-1) mod n: Thus p = gcd(x+1, n): Use Carmichael function
instead of Euler totient function View
RSA keys View &Help View RSA keys View keys Wiener's attack You should generate keys first You should generate message for encryption first and odd number k = (e*d-1) / 2^%i: and odd number k = (e*d-1) / 2^t: and q = gcd(x+1, n): g^(k*2^%i) mod n is equal to 1,
while x = g^(k*2^%i) mod n is not equal to 1 or -1,
where g: g^(k*2^i) mod n is equal to 1,
while x = g^(k*2^i-1) mod n is not equal to 1 or -1,
where g: modulus 'n' n/a prime number 'p' prime number 'q' private exponent 'd' public exponent 'e' Project-Id-Version: RSA lab activity
POT-Creation-Date: 2014-06-06 15:37+0400
PO-Revision-Date: 2014-06-06 15:39+0400
Last-Translator: Kirill <gavvvr@ya.ru>
Language-Team: 
Language: ru
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Poedit 1.6.4
X-Poedit-Basepath: .
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2);
X-Poedit-SourceCharset: UTF-8
X-Poedit-KeywordsList: _
X-Poedit-SearchPath-0: C:\Users\gavvv_000\Documents\RSA-lab
 Выход 1 Ключи 1го пользователя Ключи 2го пользователя О программе Тип атаки Атака, использующая мультипликативное свойство шифра РША Атака, используящая мультипликативное свойство алгоритма РША C^e^k mod n == C, где k равно: Вычислить "d" Посчитать C' = C*x^e mod n Посчитать M = M' * x^(-1) mod n Вычисление "d" 2го пользователя Выбранное сообщение: Криптограмма #%d Криптограмма: Атака на общие модули Циклическая атака Дешифровать C' Найденная секретная экспонента "d": Зашифровать Зашифровать случайное сообщение из списка Вычислить решение системы уравнений Выполнить атаку Винера Выполнить циклическую атаку Выполнить обобщенную циклическую атаку Фактризация "n", зная обе экспоненты "e" и "d" Факторизация модуля РША при помощи двух экспонент (открытой и секретной) Не удалось выполнить циклическую атаку в течении %i секунд! Не удалось выполнить атаку Винера! Не удалось найти сообщение в течении %i секунд путем перебора известных сообщений! Операция прервана.
Сгенерируйте новый список с меньшим числом возможных сообщений или сгенерируйте ключи меньшей длины. Файл Найти соответствующее сообщение Найти кубический корень методом Ньютона Найти делители "n" Найти минимально возможное 'k' такое, что C^e^k = C Сгенерировать 
ключи РША Сгенерировать 2 набора ключей
с общим модулем Сгенерировать 3 набора ключей Сгенерировать кючи РША Сгенерировать "x" Сгенерировать список возможных сообщений Сгенерировать случайное сообщение Данная криптограмма соответствует возможному сообщению  #%i Известная криптограмма: Атака Хастада Атака Хастада на малую открытую экспоненту "e" Справка Инициализация генератора случайных чисел Язык: Поиск зашифрованного сообщения путем полного перебора криптограмм по списку соответствующиму всех известным сообщением Список возможных сообщений: Шифруемое сообщение: Ни одно из возможных сообщений не соответствует данной криптограмме Число возможным сообщений: Выберите язык: Возможное сообщение #%d Простое число "p": Простое число "q": Простое число 'p': Простое число 'q': Открытая экспонента "e": Открытая экспонента 'e': Открытый ключ Модуль криптосистемы "n": Выйти из программы Лабораторная "Побочные атаки на РША" Длина ключа РША: Ключи РША РША модуль 'n': Длина модуля РША: Случайное число "x" взаимнопростое с модулем криптосистемы: Генератор случайных чисел Секретная экспонента 'd': Длина секретной экспоненты: Секретная экспонента Инициализация ГСЧ Задать начальное состояние вручную Малое количество возможных сообщений Малая экспонента дешифрования Малая шифрующая экспонента Введенное значение не является целым числом Сообщение должно быть от 1 до n-1 включительно Данный язык не поддерживается системой Таким образом, исходное сообщение M = C^e^(k-1) mod n: Тогда p = gcd(x+1, n): Использовать функцию Кармайкла
вместо функции Эйлера Показать
ключи РША Показать справку Показать ключи Показать ключи Атака Винера Сначала следует сгенерировать ключи Сначала нужно сгенерировать шифруемое сообщение и нечетное число k = (e*d-1) / 2^%i: и нечетное число k = (e*d-1) / 2^t: и q = gcd(x+1, n): g^(k*2^%i) mod n равно 1,
при этом x = g^(k*2^%i) mod n не равно 1 или -1,
где g равно: g^(k*2^i) mod n равно 1,
при этом x = g^(k*2^i-1) mod n не равно 1 или -1,
где g равно: модуль 'n' н/д простое число 'p' простое число 'q' секретная экспонента 'd' открытая экспонента 'e' 
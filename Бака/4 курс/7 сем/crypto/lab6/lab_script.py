def egcd(a,b):
    x, xx, y, yy = 1, 0, 0, 1
    while b:
        q = a // b
        a, b = b, a % b
        x, xx = xx, x - xx*q
        y, yy = yy, y - yy*q
    return x, y, a


M = int(input("M: "))
p = int(input("p: "))
q = int(input("q: "))
n = p*q
print(f"n: {n}")
if M > n:
    M = M%n
    print(f"M: {M}")
C = M**2%n
print(f"C: {C}")
a = C%p
print(f"a: {a}")
r = a**int((p+1)/4)%p
print(f"r: {r}")
a1 = C%q
print(f"a1: {a1}")
s = a1**int((q+1)/4)%q
print(f"s: {s}")
c, d, _ = egcd(p,q)
print(f"c: {c}")
print(f"d: {d}")
x = (r*d*q+s*c*p)%n
print(f"({r}*{d}*{q}+{s}*{c}*{p})%{n}")
print(r*d*q+s*c*p)
y = (r*d*q-s*c*p)%n
print(f"({r}*{d}*{q}-{s}*{c}*{p})%{n}")
print(r*d*q-s*c*p)
z1 = x
z2 = n-z1
z3 = y
z4 = n-z3
print(z1, z2, z3, z4)
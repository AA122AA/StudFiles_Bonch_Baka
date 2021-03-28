def Convert(string):
        list1=[]
        list1[:0]=string
        return list1
def main():
    x = [0 for _ in range(32)]
    N1 = Convert(input())
    K0 = Convert(input())
    for i in range(len(N1)):
        N1[i] = int(N1[i])
        K0[i] = int(K0[i])
    print(N1)
    print(K0)
    ad = 0
    for i in range(31,0,-1):
        if N1[i]==K0[i]==1 and ad==1:
           x[i]=1 
           ad=1
        elif N1[i]==K0[i]==1 and ad==0:
           x[i]=0 
           ad=1
        elif N1[i]==K0[i]==0 and ad==0:
           x[i]=0 
        elif N1[i]==K0[i]==0 and ad==1:
           x[i]=1 
           ad=0
        elif N1[i]!=K0[i] and ad==1:
           x[i]=0 
        elif N1[i]!=K0[i] and ad==0:
           x[i]=1 
    
    s = "".join(str(a) for a in x)
    s1 = ""
    for i in range(8):
        s1 += s[i*4:i*4+4] + " " 
    
    with open("out.txt", "w") as f:
        f.write(s1)

if __name__ == "__main__":
    main()

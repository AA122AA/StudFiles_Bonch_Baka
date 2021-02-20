

def main():
    fd=input("fd= ")
    fmin=input("fmin= ")
    fmax=input("fmax=" )
    fs={"f1":[],"f2":[],"f3":[],"f4":[]}
    for i in range(4):
        fs["f1"].append(i*int(fd)+int(fmin))
        fs["f2"].append(i*int(fd)+int(fmax))
        fs["f3"].append(abs(i*int(fd)-int(fmin)))
        fs["f4"].append(abs(i*int(fd)-int(fmax)))
    for i in range(4):
        print(fs["f1"][i], fs["f2"][i], fs["f3"][i], fs["f4"][i])

if __name__ == "__main__":
    main()

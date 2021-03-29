import java.util.Scanner;
public class Main {

    public static boolean isPoly(String word) {
        boolean result = false;
        int k = 0;
        int len = word.length();
        for (int i = 0; i < (int)(len/2); i++){
            if (word.charAt(i) == word.charAt(len-1-i)){
                k++;
            }
        }
        if (k == (len/2)) {
            result = true;
        }
        return result;
    }


    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        while (true) {
            System.out.print("Введите слово или exit(для выхода): ");
            String word = sc.nextLine().toLowerCase();
            if (word.equals("exit")){break;}
            System.out.println("is polyndrom? "+ isPoly(word));
        }
        sc.close();
    }
}
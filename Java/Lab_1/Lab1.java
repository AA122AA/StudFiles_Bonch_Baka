import java.util.InputMismatchException;
import java.util.Scanner;

/**
 * Lab1
 */
public class Lab1 {

    public static void main(String[] args) {
        System.out.println("Введите число:");
        Scanner sc = new Scanner(System.in);
        int length = 0;
        if (sc.hasNextInt()){
            length = sc.nextInt();
        }
        else{
            System.out.println("Вы ввели не целое число!");
        }
        int arr[] = new int[length] ;
        System.out.println("Заполните массив!");
        for (int i = 0; i < arr.length; i++) {
            if (sc.hasNextInt()){
                arr[i]=sc.nextInt();
            }
            else {
                System.out.println("Не тот тип!");
                sc.next();
            }
       
        }
        sc.close();
    }
}
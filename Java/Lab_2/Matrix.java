import java.util.Random;
import java.util.Scanner;
/**
 * Matrix
 */
public class Matrix {

    public static void main(String[] args) {
        Random rand = new Random();
        int[][] matrix = new int [10][10];
        for (int i = 0; i < matrix.length; i++) {
            for (int j = 0; j < matrix.length; j++) {
                matrix[i][j] = rand.nextInt(100);
            }
        }
        Scanner scMenu = new Scanner(System.in);
        Scanner scInt = new Scanner(System.in);
        boolean cycle = true;
        while (cycle==true) {
            System.out.println("Commands:\n 1. print\n 2. switch\n 3. pow\n 4. rotate\n 5. exit\n");
            String input = scMenu.nextLine();
            if (input.equals("print")){
                for (int i = 0; i < matrix.length; i++) {
                    for (int j = 0; j < matrix.length; j++) {
                        System.out.print(matrix[i][j] + " ");
                    }
                        System.out.println();
                }
            } else if (input.equals("switch")) {
                System.out.println("Enter to columns to switch");
                int a = scInt.nextInt();
                int b = scInt.nextInt();
                int buffer;
                for (int i = 0; i < matrix.length; i++) {
                    buffer = matrix[i][a];
                    matrix[i][a] = matrix[i][b];
                    matrix[i][b] = buffer;
                }
            } else if (input.equals("pow")){
                System.out.println("Enter rows to power");
                int row = scInt.nextInt();
                for (int i = 0; i < matrix.length; i++) {
                    matrix[row][i] = matrix[row][i]*matrix[row][i];
                }

            } else if (input.equals("rotate")) {
                int[][] rotatedMatrix = new int[10][10];
                for (int i = 0; i < matrix.length; i++) {
                    for (int j = 0; j < matrix.length; j++) {
                        rotatedMatrix[i][j] = matrix[9-j][i];
                    }
                }
                for (int i = 0; i < matrix.length; i++) {
                    for (int j = 0; j < matrix.length; j++) {
                        System.out.print(rotatedMatrix[i][j] + " ");
                    }
                        System.out.println();
                }
            } else if (input.equals("exit")){
                cycle = false;
            }
        }
        
        scMenu.close();
        scInt.close();

    }
}
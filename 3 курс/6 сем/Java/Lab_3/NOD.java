import java.util.Scanner;
import java.io.File;
import java.lang.Exception;
import java.math.BigInteger;
import java.io.PrintWriter;

public class NOD {
    public static void main(String[] args) {
        long start = System.currentTimeMillis();
        try {
            boolean isZero = true;
            File file = new File("./input.txt");
            Scanner scanner = new Scanner(file);
            BigInteger a = new BigInteger(scanner.next());
            BigInteger b = new BigInteger(scanner.next());
            BigInteger gcd = new BigInteger("0");

            while (isZero) {
                if (b.equals(BigInteger.ZERO)) {
                    isZero = false;
                } else {
                    gcd = a.remainder(b);
                    a = b;
                    b = gcd;
                }
            }
            PrintWriter writer = new PrintWriter("./output.txt");
            writer.println("Наибольший общий делитель равен: "+a.toString());
            writer.close();
            System.out.println("Прошло времени, мс: " + (System.currentTimeMillis() - start));
            scanner.close();
        } catch(Exception ex) {
            System.out.println(ex);
        }
    }
}
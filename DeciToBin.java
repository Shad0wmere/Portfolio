import java.util.Scanner;

public class DeciToBin {

    public static void main(String[] args) {


        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter a decimal number: ");

        int decimal = scanner.nextInt();


        String binary = getBinary(decimal);

        System.out.println(binary);

    }





    public static String getBinary (int binary) {


        String binaryStr = "";

        while (binary != 0) {


            int bit = binary&1;

            if (bit==1) binaryStr="1" + binaryStr;

            else binaryStr = "0" + binaryStr;

            binary = binary >> 1;

        }


        return binaryStr;


    }

}
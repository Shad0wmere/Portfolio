import java.util.Scanner;

public class MakeBinaryDeci {

   public static int binaryToDeci(String bin) {
      int exponent2 = 1;
      int deci = 0;
      for (int i = bin.length() - 1; 
            i >= 0; 
            i--) {
            
         if (bin.charAt(i) == '1') { 
            deci += exponent2;
         }
         exponent2 = exponent2 * 2;       }
           
      return deci;
   }
  
   public static void main(String[] args) {
      String binary;
      Scanner in = new Scanner(System.in);
      System.out.print("Enter a 16-bit binary number: ");
      binary = in.next();
      System.out.println("Decimal number is " + binaryToDeci(binary));
   }
}
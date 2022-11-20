import java.util.Scanner;

   // Programming exercise 3
   /** 
    * @author MattAnderson
    */

// decimal to binary conversion 
// assumed to be 32 bits 
  
public class Binaryconv { 
    // to convert decimal to binary 
   public static void deciToBinary(int n) 
   { 
        // successive division by 2
      if (n > 0) {
         deciToBinary(n / 2);
         System.out.printf("%d", (n % 2));
      } 
   } 
  
   public static void main(String[] args) {
      Scanner b = new Scanner(System.in);
      System.out.println("Please enter a number to be "
         + "converted to binary: ");
            
      int n2 = b.nextInt();
      deciToBinary(n2); 
   }
} 
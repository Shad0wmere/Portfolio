import java.util.Scanner;

   // Programming exercise 2
   /** 
    * @author MattAnderson
    */

public class Hexa {

/**
* creates Hexa class.
* @param args as a string.
*/

   public static void main(String[] args) {
      System.out.println("Welcome, this program enters hexadecimal "
         + "digit data.");
      System.out.println("Enter a character from 0 to 9 or A to F:");
      
      Scanner b = new Scanner(System.in);
      
      char c = b.next().charAt(0);
      
      switch(c) {
         case '0':
            char myChar = '0';
            int  i = (int) myChar; // cast from a char to an int
            i = i - 48;
            System.out.println(i);
            break;
         case '1':
            char myCharj1 = '1';
            int  j1 = (int) myCharj1; // cast from a char to an int
            j1 = j1 - 48;
            System.out.println(j1);  
            break;
         case '2':
            char myCharj2 = '2';
            int  j2 = (int) myCharj2; // cast from a char to an int
            j2 = j2 - 48;
            System.out.println(j2);  
            break;
         case '3':
            char myCharj3 = '3';
            int  j3 = (int) myCharj3; // cast from a char to an int
            j3 = j3 - 48;
            System.out.println(j3);  
            break;
         case '4':
            char myCharj4 = '4';
            int  j4 = (int) myCharj4; // cast from a char to an int
            j4 = j4 - 48;
            System.out.println(j4);  
            break;
         case '5':
            char myCharj5 = '5';
            int  j5 = (int) myCharj5; // cast from a char to an int
            j5 = j5 - 48;
            System.out.println(j5);
            break;
         case '6':
            char myCharj6 = '6';
            int  j6 = (int) myCharj6; // cast from a char to an int
            j6 = j6 - 48;
            System.out.println(j6); 
            break; 
         case '7':
            char myCharj7 = '7';
            int  j7 = (int) myCharj7; // cast from a char to an int
            j7 = j7 - 48;
            System.out.println(j7); 
            break;
         case '8':
            char myCharj8 = '8';
            int  j8 = (int) myCharj8; // cast from a char to an int
            j8 = j8 - 48;
            System.out.println(j8); 
            break;
         case '9':
            char myCharj9 = '9';
            int  j9 = (int) myCharj9; // cast from a char to an int
            j9 = j9 - 48;
            System.out.println(j9); 
            break;
         case 'A':
            char myCharjA = 'A';
            int  jA = (int) myCharjA; // cast from a char to an int
            jA = 10;
            System.out.println(jA); 
            break;
         case 'B':
            char myCharjB = 'B';
            int  jB = (int) myCharjB; // cast from a char to an int
            jB = 11;
            System.out.println(jB); 
            break;
         case 'C':
            char myCharjC = 'C';
            int  jC = (int) myCharjC; // cast from a char to an int
            jC = 12;
            System.out.println(jC); 
            break;
         case 'D':
            char myCharjD = 'D';
            int  jD = (int) myCharjD; // cast from a char to an int
            jD = 13;
            System.out.println(jD); 
            break;
         case 'E':
            char myCharjE = 'E';
            int  jE = (int) myCharjE; // cast from a char to an int
            jE = 14;
            System.out.println(jE); 
            break;
         case 'F':
            char myCharjF = 'F';
            int  jF = (int) myCharjF; // cast from a char to an int
            jF = 15;
            System.out.println(jF); 
            break;
         default: 
            System.out.println("The character " + c + " is invalid: "
               + c + " is not a hexadecimal digit.");           
      }
           
   }
}
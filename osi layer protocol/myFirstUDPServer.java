import java.io.*;
import java.net.*;
import java.util.Scanner;

public class myFirstUDPServer {
   public static void main(String[] args) throws IOException{
      // S =Sentence, H = host, P = port #, Sv = SessServ

      String S = "";
      Scanner input = new Scanner(System.in);
      String H; //tuxMachine 
      System.out.print("Type your Server's name(tux at IP address):  ");
      H = input.nextLine(); //input tuxMachine
      System.out.print("Type port # of server [port #] here:  ");
      int P = input.nextInt();

      //creates UDP server socket
      DatagramSocket serverSocket = new DatagramSocket(10022);
      byte[] receiveData = new byte[1024];  //should be byteServSide ??
      byte[] shortHexServ = new byte[1024];

      while(true) {

         DatagramPacket receivePacket = new DatagramPacket(receiveData, receiveData.length);
         serverSocket.receive(receivePacket);

         //+++++++++++++++ ??
         byte[] byteServSide = S.getBytes("UTF-16");   //convert S to bytes
         //++++++++++++++ ??
         System.out.println("Byte per byte from Client is: " + byteServSide);  //display S from Client in bytes
         System.out.println("Data is:  " + S);  
         System.out.println("IP/host is:  " + H);  
         //System.out.println("Port # is:  " + ClientSidePt);  

         //convert byteServSide to short integer called A
        // byteServSide = S.getShort(S); //
        // A = S.getShort(S);
         String Se = new String(receivePacket.getData());
         short convertedNumber = Short.parseShort(Se.trim());

         InetAddress IPaddy = receivePacket.getAddress();
         int Port = receivePacket.getPort();
         String returnSentence = String.valueOf(convertedNumber);
         shortHexServ = returnSentence.getBytes();

         System.out.println("String data from S is: " + Se);
         System.out.println("Short integer is: " + convertedNumber);
         System.out.println("Byte per byte sending back is: " + shortHexServ);

         DatagramPacket sendBackPacket = new DatagramPacket(shortHexServ, shortHexServ.length, IPaddy, Port);
         serverSocket.send(sendBackPacket); 
            //echo back below
            //+++++++++++++++++++++++++
            // out.write(byteServSide);
         
        // out.writeUTF(S);
        // out.flush();
        // System.out.println("Data returned is:   " + S);
      }


   }


}

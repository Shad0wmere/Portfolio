import java.io.*;
import java.net.*;
import java.util.Scanner;

public class myFirstUDPClient {
	public static void main(String[] args) throws IOException {
		Scanner input = new Scanner(System.in);
		String H = ""; //tuxMachine 
		int P; //port #
		String S = "";
		String SentMessage = "";
		String Host = "";

		System.out.print("Type your Server's name(tux name at IP address ):  ");
		H = input.nextLine(); //input tuxMachine
		System.out.print("Type your Server's port(enter port #):  ");
		P = input.nextInt();  //input port #

		//UDP Socket
		DatagramSocket clientSocket = new DatagramSocket();

		//Socket client = new Socket(H, P);
	
			input.nextLine();
			System.out.println("Your data to input is:   ");
			S = input.nextLine();

			byte[] shortHexServ = S.getBytes("UTF-16");
			//byte[] shortHexServ = Short.toString(S).getBytes();
			//byte[] b = S.getBytes();   //convert S to bytes
			System.out.println("Byte per byte is: " + shortHexServ);  //ii display S in bytes

			float start = System.nanoTime();
			//out.writeUTF(S);
			//out.flush();

			InetAddress Ha = InetAddress.getByName("localhost");
			int Pn = P;

			DatagramPacket sendBackPacket = new DatagramPacket(shortHexServ, shortHexServ.length, Ha, Pn);
			clientSocket.send(sendBackPacket);

			if(!S.equals("quit")) 
			{
				//SentMessage = in.readUTF(); convert for UDP?
				float end = System.nanoTime();
				System.out.println("Byte per byte form of response is: " + shortHexServ);
				System.out.println("Response is:   " + SentMessage);
				//iii
				float time = (end-start)/1000000;
				System.out.println("Time for round trip is:   " + time + "ms");
			} while (S.equals("quit")==false);

            //int shortHexServSL = convertByteArrayToInt2(shortHexServ);
            Host = H;

			clientSocket.close();

    }


}
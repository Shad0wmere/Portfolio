  /**
   * Directory.java.
   * Tree structure directory.
   * @author Matt Anderson.
   * @version 07/2/2021.
   */

import java.util.ArrayList;
import java.util.List;

   /**
   * Creates class Directory.
   */
public class Directory {

   private List<Directory> childOfLoki = new ArrayList<>();
   private String loki;
	   
   /**
   * Makes directory with string.
   * @param loki Declares loki as a string.
   */
   public Directory(String loki) {
      this.loki = loki;
   }
   
   /**
   * Combines directory with parent for new directory.
   * @param loki Declares loki as a string.
   * @return - returns newDirectory as string.
   */
   public Directory addChild(String loki) {
      Directory newDirectory = new Directory(loki);
      this.childOfLoki.add(newDirectory);
      return newDirectory;
   }
   
   @Override
   public String toString() {
      return "Directory{" 
         + "name='" + loki + '\'' 
         + ", child directories =" 
         + childOfLoki + '}';
   }
   
   /**
   * Directory suggestion from assignment.
   * @param args Declares args as a string.
   */
   public static void main(String[] args)
   {
      Directory root = new Directory("root");
      Directory user = root.addChild("user");
      user.addChild("user1");
      user.addChild("user2");
      Directory apps = root.addChild("apps");
      Directory chrome = apps.addChild("chrome");
      Directory word = apps.addChild("word");
      
   /**
   * Print out root, user, apps.
   */
      System.out.println("Root: \n" + root); 
      System.out.println("\n User: \n" + user); 
      System.out.println("\n Apps: \n" + apps); 
   }
}
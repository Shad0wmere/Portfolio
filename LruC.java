  /**
   * LruC.java.
   * LRU cache with counting.
   * @author Matt Anderson.
   * @version 06/25/2021.
   */

import java.util.HashMap;
import java.util.Hashtable;
import java.util.LinkedList;
import java.util.Dictionary;
import java.util.Map;
import java.util.Deque;

 /**
  * declares variables.
  * creates class LruC.
  * 
  */
public class LruC {

   
   private static Deque<Integer> lrukeys;
   private static int sizeOfCache;
   private static Map<Integer, Boolean> referredKey = new HashMap<>();

   LruC(int x)
   {
      sizeOfCache = x;
      lrukeys = new LinkedList<>();
      referredKey = new Hashtable<>();
   }

   /**
   * addPage Method adds page, gives T or F if in table.
   * @param validPage Declares validPage variable.
   */
   public void addPage(int validPage)
   {

   // checkPage method - decides if key is in HashSet.
      if (checkPage(validPage)) {

      // Check cache for fullness and removes last item.
         if (lrukeys.size() == sizeOfCache) {
            int last = lrukeys.removeLast();
            referredKey.remove(last);
         }  
      }
      else {

      // Checks if key is in dictionary.
         int index = 0, j = 0;
         for (Integer key : lrukeys) {
            if (key == validPage) {
               index = j;
               break;
            }
            j++;
         }

      // Removes from key queue.
         lrukeys.remove(index);
      }

      // Adds key to queue.
      lrukeys.push(validPage);


      referredKey.put(validPage, true);
   }

   /**
   * checkPage Method checks validbit, gives T or F if in table.
   * @param validPage Declares validPage variable.
   * @return validPage.
   */
      // Checks if cache has value.
   public boolean checkPage(int validPage) {
      return !referredKey.containsKey(validPage);
   }


   /**
   * Getter for Dictionary.
   * @return - returns Dictionary with pairs of keys in memory cache.
   */
   Dictionary<Integer, Boolean> Dictionary() 
   {
      return (Dictionary<Integer, Boolean>) referredKey;
   }

   /**
   * Displays results and prints.
   */
   public void display() {
      for (Integer key : lrukeys) System.out.print(key + " ");
         
   }

   /**
   * Tests the cache.
   * @param args Declares values as a string of args.
   */
   // Tests LruC and tests cache.
   public static void main(String[] args) {
      LruC test = new LruC(5);
      test.addPage(1);
      test.addPage(2);
      test.addPage(3);
      test.addPage(2);
      test.addPage(4);
      test.addPage(5);
      test.addPage(1);
      test.addPage(1);
      test.addPage(2);
      test.addPage(5);
      test.display();
      test.Dictionary();
   }

}
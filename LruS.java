  /**
   * LruS.java.
   * LRU cache with stack.
   * @author Matt Anderson.
   * @version 06/25/2021.
   */

import java.util.HashMap;
import java.util.Dictionary;
import java.util.Map;
import java.util.Deque;

 /**
  * declares variables.
  * creates class LruS.
  * 
  */
class Entry {
   Entry right;
	Entry left;
   int value;
   int key;

} 

   /**
   * Creates class LruS.
   */
public class LruS {


	HashMap<Integer, Entry> hashmap;
	Entry start, end;
	int sizeOfLRU = 6; 
   
   /**
   * hashmap for LruS.
   */
  	public LruS() {
		hashmap = new HashMap<Integer, Entry>();
	}

   /**
   * addPage Method adds page, gives T or F if in table.
   * @param key Declares key variable.
   * @param value Declares value variable.
   */
   public void addPage(int key, int value) {
		if (hashmap.containsKey(key)) 
		{
			Entry entry = hashmap.get(key);
			entry.value = value;
			removeNode(entry);
			topAdd(entry);
		} else {
			Entry newnode = new Entry();
			newnode.left = null;
			newnode.right = null;
			newnode.value = value;
			newnode.key = key;
			if (hashmap.size() > sizeOfLRU) {
				hashmap.remove(end.key);
				removeNode(end);				
				topAdd(newnode);

			} else {
				topAdd(newnode);
			}

			hashmap.put(key, newnode);
		}
	}
   
   /**
   * topAdd checks position of node.
   * @param node Adds at top.
   */
	public void topAdd(Entry node) {
		node.right = start;
		node.left = null;
		if (start != null)
      {
			start.left = node;
		   start = node;
      }
		if (end == null)
      {
			end = start;
      }
	}

   /**
   * removeNode checks position of node.
   * @param node Changes node value.
   */
	public void removeNode(Entry node) {

		if (node.left != null) {
			node.left.right = node.right;
		} else {
			start = node.right;
		}

		if (node.right != null) {
			node.right.left = node.left;
		} else {
			end = node.left;
		}
	}
   

      

   /**
   * checkPage Method checks validbit, gives T or F if in table.
   * @param key Declares key variable.
   * @return value.
   */

	public int checkPage(int key) {
		if (hashmap.containsKey(key)) {
			Entry entry = hashmap.get(key);
			removeNode(entry);
			topAdd(entry);
			return entry.value;
		}
		return -1;
	}


   /**
   * Tests the cache.
   * @param args Declares values as a string of args.
   */
	public static void main(String[] args) throws java.lang.Exception {
		LruS lrucache = new LruS();
		lrucache.addPage(1, 1);
		lrucache.addPage(10, 14);
		lrucache.addPage(14, 10);
		lrucache.addPage(8, 16);
		lrucache.addPage(12, 14);
		lrucache.addPage(18, 10);
		lrucache.addPage(13, 16);
		System.out.println(lrucache.checkPage(1));
		System.out.println(lrucache.checkPage(8));
		System.out.println(lrucache.checkPage(14));

	}
}
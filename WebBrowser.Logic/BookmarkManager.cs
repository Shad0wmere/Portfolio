using System.Collections.Generic;
using WebBrowser.Data.HistoryBookmarksDataSetTableAdapters;

namespace WebBrowser.Logic
{
    public class BookmarkManager
    {
        //add bookmarks.
        public static void AddItemBookmarks(BookmarkItem item)
        {
            
            {
                var adapter = new BookmarksTableAdapter();
                adapter.Insert(item.Id, item.Title, item.URL);
            }
 
        }

        //get bookmarks.
        public static List<BookmarkItem> GetBookmarksItems()
        {
            var adapter = new BookmarksTableAdapter();
            var results = new List<BookmarkItem>();
            var rows = adapter.GetData();
            foreach (var row in rows)
            {
                var item = new BookmarkItem();
                item.Id = row.Id;
                item.URL = row.URL;
                item.Title = row.Title;
                
                results.Add(item);

            }
            return results;

        }


    }
}

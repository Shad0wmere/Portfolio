using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using WebBrowser.Logic;



namespace WebBrowser.UI
{
    public partial class UserControl1 : UserControl
    {
        public UserControl1()
        {
            InitializeComponent();
        }

        /* backwards link stack of strings */
        Stack<string> backwardsLink = new Stack<string>();
        /* forwards link stack of strings */
        Stack<string> forwardsLink = new Stack<string>();

        /* field for backwards link */
       public void backwardsLinkField()
       {
            string url = toolStripaddressTextBox1.Text;
            backwardsLink.Push(url);
            
       }



        /*field for forwards link */
       public void forwardsLinkField()
        { 
           while (toolStripaddressTextBox1.Text != null)
            {
                string url = toolStripaddressTextBox1.Text;
                forwardsLink.Push(url);
           }
       }




        private void exitWebBrowserToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        /* about me */
        private void aboutToolStripMenuItem_Click_1(object sender, EventArgs e)
        {
            MessageBox.Show("Browser created by Matthew Anderson");
        }




        /* toolstrip Textbox1 Click */
        private void toolStripaddressTextBox1_Click(object sender, EventArgs e)
        {
            webBrowser1.Navigate(toolStripaddressTextBox1.Text.ToString());
            string url = toolStripaddressTextBox1.Text;
            webBrowser1.Navigate(url);
            backwardsLink.Push(url);
            forwardsLink.Push(url);


        }

        /* back button */
        private void toolStripButton1_Click(object sender, EventArgs e)
        {
            string url = toolStripaddressTextBox1.Text;
            forwardsLink.Push(webBrowser1.Url.ToString());
            webBrowser1.GoBack();



        }

        /* forward button */
        private void toolStripButton2_Click(object sender, EventArgs e)
        {
            backwardsLink.Push(webBrowser1.Url.ToString());
            webBrowser1.GoForward();

        }

        /*refresh button*/
        private void toolStripButton3_Click(object sender, EventArgs e)
        {
            webBrowser1.Refresh();

        }

        /* Toolstrip Textbox1 enter */
        private void toolStripaddressTextBox1_Enter(object sender, EventArgs e)
        {
            webBrowser1.Navigate(toolStripaddressTextBox1.Text.ToString());
            string url = toolStripaddressTextBox1.Text;
            webBrowser1.Navigate(url);
            backwardsLink.Push(url);
            forwardsLink.Push(url);

        }

        private void bookMarkButton1_Click(object sender, EventArgs e)
        {
           var bookmarkitem = new BookmarkItem();
            bookmarkitem.URL = toolStripaddressTextBox1.Text;
            bookmarkitem.Title = webBrowser1.DocumentTitle;
            BookmarkManager.AddItemBookmarks(bookmarkitem);
            
        }






    }
}

using System;
using System.Windows.Forms;
using System.Collections.Generic;
using WebBrowser.UI;
using WebBrowser.Logic;



namespace WebBrowser.UI
{ //for Presentation tier of project.76
    public partial class MainForm : Form
    {
        public MainForm()
        {
            InitializeComponent();
        }

        /* exit browser*/
        private void exitWebBrowserToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }


        /* about me*/
        private void aboutToolStripMenuItem_Click_1(object sender, EventArgs e)
        {
            MessageBox.Show("Browser created by Matthew Anderson, #904131976, mda0030@auburn.edu ");
        }

 



        /* key down*/
        private void UserControl1_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Control && (e.KeyCode == Keys.T))
                this.tabControl1.TabPages.Add(new TabPage("New Tab"));
            if (e.Control && (e.KeyCode == Keys.W))
                this.tabControl1.TabPages.RemoveAt(this.tabControl1.SelectedIndex);
        }

        /*close tab*/
        private void closeCurrentTabToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.tabControl1.TabPages.RemoveAt(this.tabControl1.SelectedIndex);
        }


        /* new tab*/
        private void newTabToolStripMenuItem1_Click_1(object sender, EventArgs e)
        {
            var page = new TabPage("New Tab");
            var tabBody = new UserControl1();
            page.Controls.Add(tabBody);
            tabBody.Dock = DockStyle.Fill;
            tabControl1.TabPages.Add(page);
        }

        // manage history menu
        private void manageHistoryToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var historyItem = new History_Manager_Form();
            historyItem.ShowDialog();

        }

        // manage bookmarks menu
        private void manageBookmarksToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var bookmarksItem = new Bookmark_Manager_Form();
            bookmarksItem.ShowDialog();
        }


    }
}

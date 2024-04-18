
namespace WebBrowser.UI
{
    partial class UserControl1
    {
        /// <summary> 
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(UserControl1));
            this.toolStrip1 = new System.Windows.Forms.ToolStrip();
            this.toolStripButton1 = new System.Windows.Forms.ToolStripButton();
            this.toolStripButton2 = new System.Windows.Forms.ToolStripButton();
            this.toolStripButton3 = new System.Windows.Forms.ToolStripButton();
            this.toolStripButton4 = new System.Windows.Forms.ToolStripButton();
            this.toolStripaddressTextBox1 = new System.Windows.Forms.ToolStripTextBox();
            this.goButton5 = new System.Windows.Forms.ToolStripButton();
            this.bookMarkButton1 = new System.Windows.Forms.ToolStripButton();
            this.historyButton1 = new System.Windows.Forms.ToolStripButton();
            this.webBrowser1 = new System.Windows.Forms.WebBrowser();
            this.toolStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // toolStrip1
            // 
            this.toolStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripButton1,
            this.toolStripButton2,
            this.toolStripButton3,
            this.toolStripButton4,
            this.toolStripaddressTextBox1,
            this.goButton5,
            this.bookMarkButton1,
            this.historyButton1});
            this.toolStrip1.Location = new System.Drawing.Point(0, 0);
            this.toolStrip1.Name = "toolStrip1";
            this.toolStrip1.Size = new System.Drawing.Size(517, 25);
            this.toolStrip1.TabIndex = 2;
            this.toolStrip1.Text = "toolStrip1";
            // 
            // toolStripButton1
            // 
            this.toolStripButton1.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.toolStripButton1.Image = ((System.Drawing.Image)(resources.GetObject("toolStripButton1.Image")));
            this.toolStripButton1.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButton1.Name = "toolStripButton1";
            this.toolStripButton1.Size = new System.Drawing.Size(23, 22);
            this.toolStripButton1.Text = "backbtn";
            this.toolStripButton1.Click += new System.EventHandler(this.toolStripButton1_Click);
            // 
            // toolStripButton2
            // 
            this.toolStripButton2.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.toolStripButton2.Image = ((System.Drawing.Image)(resources.GetObject("toolStripButton2.Image")));
            this.toolStripButton2.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButton2.Name = "toolStripButton2";
            this.toolStripButton2.Size = new System.Drawing.Size(23, 22);
            this.toolStripButton2.Text = "forwardbtn";
            this.toolStripButton2.Click += new System.EventHandler(this.toolStripButton2_Click);
            // 
            // toolStripButton3
            // 
            this.toolStripButton3.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.toolStripButton3.Image = ((System.Drawing.Image)(resources.GetObject("toolStripButton3.Image")));
            this.toolStripButton3.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButton3.Name = "toolStripButton3";
            this.toolStripButton3.Size = new System.Drawing.Size(23, 22);
            this.toolStripButton3.Text = "refreshbtn";
            this.toolStripButton3.Click += new System.EventHandler(this.toolStripButton3_Click);
            // 
            // toolStripButton4
            // 
            this.toolStripButton4.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.toolStripButton4.Image = ((System.Drawing.Image)(resources.GetObject("toolStripButton4.Image")));
            this.toolStripButton4.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButton4.Name = "toolStripButton4";
            this.toolStripButton4.Size = new System.Drawing.Size(23, 22);
            this.toolStripButton4.Text = "homebutton";
            // 
            // toolStripaddressTextBox1
            // 
            this.toolStripaddressTextBox1.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.toolStripaddressTextBox1.Name = "toolStripaddressTextBox1";
            this.toolStripaddressTextBox1.Size = new System.Drawing.Size(100, 25);
            this.toolStripaddressTextBox1.Enter += new System.EventHandler(this.toolStripaddressTextBox1_Enter);
            this.toolStripaddressTextBox1.Click += new System.EventHandler(this.toolStripaddressTextBox1_Click);
            // 
            // goButton5
            // 
            this.goButton5.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.goButton5.Image = ((System.Drawing.Image)(resources.GetObject("goButton5.Image")));
            this.goButton5.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.goButton5.Name = "goButton5";
            this.goButton5.Size = new System.Drawing.Size(23, 22);
            this.goButton5.Text = "toolStripButton5";
            // 
            // bookMarkButton1
            // 
            this.bookMarkButton1.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bookMarkButton1.Image = ((System.Drawing.Image)(resources.GetObject("bookMarkButton1.Image")));
            this.bookMarkButton1.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.bookMarkButton1.Name = "bookMarkButton1";
            this.bookMarkButton1.Size = new System.Drawing.Size(23, 22);
            this.bookMarkButton1.Text = "Bookmark";
            this.bookMarkButton1.Click += new System.EventHandler(this.bookMarkButton1_Click);
            // 
            // historyButton1
            // 
            this.historyButton1.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.historyButton1.Image = ((System.Drawing.Image)(resources.GetObject("historyButton1.Image")));
            this.historyButton1.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.historyButton1.Name = "historyButton1";
            this.historyButton1.Size = new System.Drawing.Size(23, 22);
            this.historyButton1.Text = "toolStripButton6";
            
            // 
            // webBrowser1
            // 
            this.webBrowser1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.webBrowser1.Location = new System.Drawing.Point(0, 25);
            this.webBrowser1.MinimumSize = new System.Drawing.Size(20, 20);
            this.webBrowser1.Name = "webBrowser1";
            this.webBrowser1.Size = new System.Drawing.Size(517, 512);
            this.webBrowser1.TabIndex = 8;
            // 
            // UserControl1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.webBrowser1);
            this.Controls.Add(this.toolStrip1);
            this.Name = "UserControl1";
            this.Size = new System.Drawing.Size(517, 537);
            this.toolStrip1.ResumeLayout(false);
            this.toolStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        public System.Windows.Forms.ToolStrip toolStrip1;
        public System.Windows.Forms.ToolStripButton toolStripButton1;
        public System.Windows.Forms.ToolStripButton toolStripButton2;
        public System.Windows.Forms.ToolStripButton toolStripButton3;
        public System.Windows.Forms.ToolStripButton toolStripButton4;
        public System.Windows.Forms.ToolStripButton goButton5;
        public System.Windows.Forms.WebBrowser webBrowser1;
        private System.Windows.Forms.ToolStripTextBox toolStripaddressTextBox1;
        private System.Windows.Forms.ToolStripButton bookMarkButton1;
        private System.Windows.Forms.ToolStripButton historyButton1;
    }
}

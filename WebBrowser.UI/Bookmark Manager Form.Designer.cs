
namespace WebBrowser.UI
{
    partial class Bookmark_Manager_Form
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

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.bookMarkSearchTextBox = new System.Windows.Forms.TextBox();
            this.bookMarkListBox = new System.Windows.Forms.ListBox();
            this.SuspendLayout();
            // 
            // bookMarkSearchTextBox
            // 
            this.bookMarkSearchTextBox.Location = new System.Drawing.Point(56, 21);
            this.bookMarkSearchTextBox.Name = "bookMarkSearchTextBox";
            this.bookMarkSearchTextBox.Size = new System.Drawing.Size(591, 20);
            this.bookMarkSearchTextBox.TabIndex = 1;
            // 
            // bookMarkListBox
            // 
            this.bookMarkListBox.FormattingEnabled = true;
            this.bookMarkListBox.Location = new System.Drawing.Point(56, 83);
            this.bookMarkListBox.Name = "bookMarkListBox";
            this.bookMarkListBox.Size = new System.Drawing.Size(591, 355);
            this.bookMarkListBox.TabIndex = 2;
            // 
            // Bookmark_Manager_Form
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.bookMarkListBox);
            this.Controls.Add(this.bookMarkSearchTextBox);
            this.Name = "Bookmark_Manager_Form";
            this.Text = "Bookmark_Manager_Form";
            this.Load += new System.EventHandler(this.Bookmark_Manager_Form_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox bookMarkSearchTextBox;
        private System.Windows.Forms.ListBox bookMarkListBox;
    }
}
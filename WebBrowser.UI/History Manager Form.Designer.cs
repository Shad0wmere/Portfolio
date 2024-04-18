
namespace WebBrowser.UI
{
    partial class History_Manager_Form
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
            this.histSearchTextBox = new System.Windows.Forms.TextBox();
            this.histListBox = new System.Windows.Forms.ListBox();
            this.SuspendLayout();
            // 
            // histSearchTextBox
            // 
            this.histSearchTextBox.Location = new System.Drawing.Point(36, 12);
            this.histSearchTextBox.Name = "histSearchTextBox";
            this.histSearchTextBox.Size = new System.Drawing.Size(591, 20);
            this.histSearchTextBox.TabIndex = 0;
         
            // 
            // histListBox
            // 
            this.histListBox.FormattingEnabled = true;
            this.histListBox.Location = new System.Drawing.Point(36, 83);
            this.histListBox.Name = "histListBox";
            this.histListBox.Size = new System.Drawing.Size(591, 355);
            this.histListBox.TabIndex = 1;
            // 
            // History_Manager_Form
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.histListBox);
            this.Controls.Add(this.histSearchTextBox);
            this.Name = "History_Manager_Form";
            this.Text = "History_Manager_Form";
            this.Load += new System.EventHandler(this.History_Manager_Form_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        public System.Windows.Forms.TextBox histSearchTextBox;
        public System.Windows.Forms.ListBox histListBox;
    }
}
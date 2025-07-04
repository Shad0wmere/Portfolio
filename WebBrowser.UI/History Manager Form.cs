﻿using System;
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
    public partial class History_Manager_Form : Form
    {
        public History_Manager_Form()
        {
            InitializeComponent();
        }

        private void History_Manager_Form_Load(object sender, EventArgs e)
        {
            var items = HistoryManager.GetHistoryItems();
            foreach (var item in items)
            {
                histListBox.Items.Add(string.Format("[{0}] {1} ({2})", item.Date, item.Title, item.URL));

            }


        }


    }
}

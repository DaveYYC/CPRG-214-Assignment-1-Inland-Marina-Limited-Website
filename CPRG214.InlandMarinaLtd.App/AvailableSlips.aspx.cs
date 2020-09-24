﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CPRG214.InlandMarinaLtd.Data;

namespace CPRG214.InlandMarinaLtd.App
{
    public partial class AvailableSlips : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DockSelector.DockSelect += DockSelector_DockSelect;
        }

        private void DockSelector_DockSelect(object sender, Controls.DockEventArgs e)
        {
            int id = Convert.ToInt32(e.ID);
            // display available slips in grid view
            gridvSlips.DataSource = MarinaManager.getAvailableSlipByDock(id);
            gridvSlips.DataBind();
        }
    }
}
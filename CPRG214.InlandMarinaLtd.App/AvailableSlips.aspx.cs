using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CPRG214.InlandMarinaLtd.Data;

/*
 * Title: CPRG 214 ASP.Net Web Form Assignment 1
 * Author: David Hahner 
 * Date: Sept 2020
 * Description: Creation of a website for Inland Marina Ltd, 
 *              utlilizing the Entity Framework DB - First Approach.
 */

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
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CPRG214.InlandMarinaLtd.App.Controls;
using CPRG214.InlandMarinaLtd.Data;

namespace CPRG214.InlandMarinaLtd.App.Controls
{
    public partial class Leasing : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            {              
                uxWelcome.Text = $"Hello  {Context.User.Identity.Name} , Welcome to Leasing!";
                DockSelector.DockSelect += DockSelector_DockSelect;
                int customerID = Convert.ToInt32(Session["CustomerID"]);
                uxLeaseHistory.DataSource = MarinaManager.GetLeasesByCustomerID(customerID);
                uxLeaseHistory.DataBind();
            }
        }
        
        private void DockSelector_DockSelect(object sender, Controls.DockEventArgs e)
        {
            int id = Convert.ToInt32(e.ID);
            DropDownSlips.DataSource = MarinaManager.getAvailableSlipByDock(id);
            DropDownSlips.DataTextField = "ID";
            DropDownSlips.DataValueField = "ID";
            DropDownSlips.DataBind();
            DropDownSlips.SelectedIndex = 0;
            uxID.Text = e.ID;
            uxName.Text = e.Name;

            if (e.WaterService == true)
            {
                uxWaterServices.Text = "Available";
            }
            else
            {
                uxWaterServices.Text = "Not Available";
            }
            if (e.ElectricalService == true)
            {
                uxElectricalServices.Text = "Avaialable";
            }
            else {
                uxElectricalServices.Text = "Not Available";
            }
            
        }



        protected void DropDownSlips_SelectedIndexChanged(object sender, EventArgs e)
        {
            var ID = Convert.ToInt32(DropDownSlips.SelectedValue);
            var slips = MarinaManager.FindSlip(ID);
            uxSlipId.Text = slips.ID.ToString();
            uxWidth.Text = slips.Width.ToString();
            uxLength.Text = slips.Length.ToString();
            uxDockID.Text = slips.DockID.ToString();
        }

        protected void uxPurchase_Click(object sender, EventArgs e)
        {
            int customerID = Convert.ToInt32(Session["CustomerID"]);
            int slipID = Convert.ToInt32(DropDownSlips.SelectedValue);
            var db = new Marina_Auth_AddedEntities();
            var lease = new Lease { SlipID = slipID, CustomerID = customerID };
            db.Leases.Add(lease);
            db.SaveChanges();
            uxLeaseHistory.DataSource = MarinaManager.GetLeasesByCustomerID(customerID);
            uxLeaseHistory.DataBind();
        }
    }
}



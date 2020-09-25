using System;

namespace CPRG214.InlandMarinaLtd.App
{
    public partial class Leasing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["CustomerID"] == null)
            {
                Response.Redirect("Registration.aspx");
            }           
        }
    }
}
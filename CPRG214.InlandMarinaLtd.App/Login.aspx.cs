using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security; // FormsAuthentication
using CPRG214.InlandMarinaLtd.Data;

namespace CPRG214.InlandMarinaLtd.App
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }

        protected void uxAuthenticate_Click(object sender, EventArgs e)
        {
            // pass the credentials to the AuthenticationManager
            var customer = AuthenticationManager.Authenticate(uxUsername.Text, uxPassword.Text);
            if (customer == null)
            {
                //the customer is not authenticated so send message and return
                uxMessage.Text = "Invalid login";
                uxUsername.Text = string.Empty;
                uxPassword.Text = string.Empty;
                uxUsername.Focus();
                           
                return;
            }

            //add customer id to session
            Session.Add("CustomerID", customer.ID);
            // redirect - false means no persistent cookie
            FormsAuthentication.RedirectFromLoginPage(customer.FullName, false);
        }
    }
}
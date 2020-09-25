using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using CPRG214.InlandMarinaLtd.Data;

namespace CPRG214.InlandMarinaLtd.App.Controls
{
    public partial class Registration : System.Web.UI.UserControl
    {
        public bool IsUpdate { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsUpdate)
            {
                //get customer id out of session
                if (Session["CustomerID"] != null)
                {
                    //convert the object in session to an int
                    var ID = Convert.ToInt32(Session["CustomerID"]);

                    //get the Authentication object from the manager
                    var auth = AuthenticationManager.Find(ID);

                    //set the state of the form
                    if (auth != null)
                    {
                        uxFirstName.Text = auth.Customer.FirstName;
                        uxLastName.Text = auth.Customer.LastName;
                        uxPhone.Text = auth.Customer.Phone;
                        uxCity.Text = auth.Customer.City;
                        uxUsername.Text = auth.Username;
                        uxPassword.Text = auth.Password;
                    }
                } 
            }
        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            if (IsUpdate)
            {
                //updating the record
                //get customer id out of session
                if (Session["CustomerID"] != null)
                {
                    var ID = Convert.ToInt32(Session["CustomerID"]);
                    //get the Authentication object from the manager
                    var auth = AuthenticationManager.Find(ID);
                    auth.Customer.FirstName = uxFirstName.Text;
                    auth.Customer.LastName = uxLastName.Text;
                    auth.Customer.Phone = uxPhone.Text;
                    auth.Customer.City = uxCity.Text;
                    auth.Username = uxUsername.Text;
                    auth.Password = uxPassword.Text;
                    //pass auth to the manager for updating
                    AuthenticationManager.Update(auth);
                   
                    //remove from auth ticket, clear session and redirect
                    FormsAuthentication.SignOut();
                    Session.Clear();
                    Response.Redirect("~/Login");
                }
            }
            else
            {
                //inserting the record
                var auth = new Authentication
                {
                    ID = Convert.ToInt32(Session["CustomerID"]),
                    Username = uxUsername.Text,
                    Password = uxPassword.Text,
                    Customer = new Customer {
                    FirstName = uxFirstName.Text,
                    LastName = uxLastName.Text,
                    Phone = uxPhone.Text,
                    City = uxCity.Text
                    }
                };
                //pass the auth object to the manager for inserting
                AuthenticationManager.Add(auth);
                
                Response.Redirect("~/Login");
            }
        }
    }
}

    
   

using System;
using System.Web.UI;
using System.Web.Security;

/*
 * Title: CPRG 214 ASP.Net Web Form Assignment 1
 * Author: David Hahner 
 * Date: Sept 2020
 * Description: Creation of a website for Inland Marina Ltd, 
 *              utlilizing the Entity Framework DB - First Approach.
 */

namespace CPRG214.InlandMarinaLtd.App
{
    public partial class SiteMaster : MasterPage
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            // Context is property of Page class, type HttpContext
            // check if Context.User.Identity.IsAuthenticated 
            // (set innerhtml of uxLogin and uxWelcome)
            if (Context.User.Identity.IsAuthenticated)
            {
                uxWelcome.InnerText = $"Welcome {Context.User.Identity.Name}";
                uxLogin.InnerHtml = "<span class='fa fa-sign-out-alt'>";
            }
            else
            {
                uxWelcome.InnerText = string.Empty;
                uxLogin.InnerHtml = "<span class='fa fa-sign-in-alt'>";
            }
        }

        protected void HandleLoginClick(object sender, EventArgs e)
        {
            //check if Context.User.Identity.IsAuthenticated (signout auth ticket, clear session, redirect)
            if (Context.User.Identity.IsAuthenticated)
            {
                FormsAuthentication.SignOut(); // removes forms authentication ticket from the browser
                Session.Clear();
                Response.Redirect("~/");
            }
            else
            {
                Response.Redirect("~/Login");
            }
        }
    }
}

        
    

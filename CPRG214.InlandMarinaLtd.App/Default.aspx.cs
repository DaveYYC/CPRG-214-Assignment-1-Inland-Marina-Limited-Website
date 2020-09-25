using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security;
using CPRG214.InlandMarinaLtd.Data;
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
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   
            // refreshes browser if user didn't log out
            if(Session["CustomerID"] == null)
            {
                FormsAuthentication.SignOut();
            }
        }
    }
}
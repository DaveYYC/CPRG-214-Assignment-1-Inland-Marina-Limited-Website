using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/*
 * Title: CPRG 214 ASP.Net Web Form Assignment 1
 * Author: David Hahner 
 * Date: Sept 2020
 * Description: Creation of a website for Inland Marina Ltd, 
 *              utlilizing the Entity Framework DB - First Approach.
 */

namespace CPRG214.InlandMarinaLtd.App
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            uxRegistration.IsUpdate = false;
        }
    }
}
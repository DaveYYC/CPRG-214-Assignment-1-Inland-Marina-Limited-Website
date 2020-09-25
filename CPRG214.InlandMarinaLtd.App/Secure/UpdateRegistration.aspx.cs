using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CPRG214.InlandMarinaLtd.App.Secure
{
    public partial class UpdateRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // let the control know that it is being used for updating no inserting
            uxRegistration.IsUpdate = true;
        }
    }
}
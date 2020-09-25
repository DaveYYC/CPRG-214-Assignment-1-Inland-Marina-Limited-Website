using System;
using CPRG214.InlandMarinaLtd.Data;


namespace CPRG214.InlandMarinaLtd.App.Controls
{
    public partial class SlipSelector : System.Web.UI.UserControl
    {

        public event SlipSelectionHandler SlipSelect;

        public Slip Slip { get; set; }

        public bool AlowPostBack
        {
            get { return uxSlip.AutoPostBack; }
            set { uxSlip.AutoPostBack = value; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var slip = new MarinaManager();
                uxSlip.DataSource = slip.GetAllSlipsListItems();
                uxSlip.DataTextField = "ID";
                uxSlip.DataValueField = "Width";
                uxSlip.DataValueField = "Length";
                uxSlip.DataValueField = "DockId";
                uxSlip.DataBind();
                uxSlip.SelectedIndex = 0;
                uxSlip_SelectedIndexChanged(this, e);
            }
        }

        protected void uxSlip_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(SlipSelect != null)
            {
                var ID = Convert.ToInt32(uxSlip.SelectedValue);

                Slip sp = MarinaManager.FindSlip(ID);
                Slip = sp;

                var arg = new SlipEventArgs
                {
                    ID = sp.ID,
                    Width = sp.Width,
                    Length = sp.Length,
                    DockID = sp.DockID
                };

                SlipSelect.Invoke(this, arg);
            }
        }
    }
}



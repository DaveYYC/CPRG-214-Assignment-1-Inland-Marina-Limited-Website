using System;
using CPRG214.InlandMarinaLtd.Data;

namespace CPRG214.InlandMarinaLtd.App.Controls
{
    public partial class DockSelector : System.Web.UI.UserControl
    {
        // declare event
        public event DockSelectionHandler DockSelect;

        public Dock Dock { get; set; }

        public bool AllowPostBack
        {
            get { return uxDocks.AutoPostBack; }
            set { uxDocks.AutoPostBack = value; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var dk = new MarinaManager();
                uxDocks.DataSource = dk.GetAllListItems();
                uxDocks.DataTextField = "Name";
                uxDocks.DataValueField = "ID";
                uxDocks.DataBind();
                uxDocks.SelectedIndex = 0;
                uxDocks_SelectedIndexChanged(this, e);
            }
        }

        protected void uxDocks_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DockSelect != null)
            {
                var ID = Convert.ToInt32(uxDocks.SelectedValue);

                Dock dk = MarinaManager.Find(ID);
                Dock = dk;

                var arg = new DockEventArgs
                {
                    ID = dk.ID.ToString(),
                    Name = dk.Name,
                    WaterService = dk.WaterService,
                    ElectricalService = dk.ElectricalService,
                };

                DockSelect.Invoke(this, arg);
            }
        }
    }      
}

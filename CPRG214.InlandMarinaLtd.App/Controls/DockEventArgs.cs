using System;

namespace CPRG214.InlandMarinaLtd.App.Controls
{
    public class DockEventArgs: EventArgs
    {
        public string ID { get; set; }
        public string Name { get; set; }
        public bool WaterService { get; set; }
        public bool ElectricalService { get; set; }
    }
}
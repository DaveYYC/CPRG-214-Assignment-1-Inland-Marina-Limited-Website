using System;

namespace CPRG214.InlandMarinaLtd.App.Controls
{
    public class SlipEventArgs: EventArgs
    {
        public int ID { get; set; }
        public int Width { get; set; }
        public int Length { get; set; }
        public int DockID { get; set; }
    }
}
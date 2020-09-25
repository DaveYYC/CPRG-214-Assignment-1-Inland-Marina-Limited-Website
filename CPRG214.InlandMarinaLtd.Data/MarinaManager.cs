using System.Collections;
using System.Collections.Generic;
using System.Linq;

namespace CPRG214.InlandMarinaLtd.Data
{
    public class MarinaManager
    {
        // retrieve all dock info
        public IList GetAllListItems()
        {
            var db = new MarinaEntities();
            var docks = db.Docks.Select(dk => new
            {
                ID = dk.ID,
                Name = dk.Name,
                WaterService = dk.WaterService,
                ElectricalService = dk.ElectricalService
            }).ToList();
            return docks;
        }

        // find dock id
        public static Dock Find(int ID)
        {
            var db = new MarinaEntities();
            var docks = db.Docks.FirstOrDefault(d => d.ID == ID);
            return docks;
        }

        // retrieve all slip info
        public IList GetAllSlipsListItems()
        {
            var db = new MarinaEntities();
            var slips = db.Slips.Select(sp => new
            { 
              ID = sp.ID, 
              Width = sp.Width, 
              Length = sp.Length, 
              DockId = sp.DockID 
            }).ToList();
            return slips;
        }

        // find slip id
        public static Slip FindSlip(int id)
        {
            var db = new MarinaEntities();
            var slip = db.Slips.SingleOrDefault(s => s.ID == id);
            return slip;
        }

        // retreive slips that are not leased by dock id
        public static List<Slip> getAvailableSlipByDock(int id)
        {
            var db = new MarinaEntities();
            List<Slip> slips = (from slip in db.Slips
                                where (!(from lease in db.Leases
                                         select lease.SlipID).Contains(slip.ID)) && slip.DockID == id
                                select slip).ToList();
            return slips;
        }

        // retrieve all lease info by customer id
        public static ICollection<Lease> GetLeasesByCustomerID(int ID)
        {
            var db = new MarinaEntities();

            List<Lease> leases = (from lease in db.Leases
                                  where lease.CustomerID == ID
                                  select lease).ToList();
            return leases;
        }

        // retrieve all lease info
        public static IList GetAllLeases(int ID)
        {
            var db = new MarinaEntities();

            var leases = db.Leases.Select(l => new
            {
                ID = l.ID,
                SlipID = l.SlipID,
                CustomerID =l.CustomerID
            }).ToList();
            return leases;

        }
    }
}


using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Security.Cryptography;
using System.Security.Policy;
using System.Text;
using System.Threading.Tasks;

namespace CPRG214.InlandMarinaLtd.Data
{
    public class MarinaManager
    {
        public IList GetAllListItems()
        {
            var db = new Marina_Auth_AddedEntities();
            var docks = db.Docks.Select(dk => new
            {
                ID = dk.ID,
                Name = dk.Name,
                WaterService = dk.WaterService,
                ElectricalService = dk.ElectricalService
            }).ToList();
            return docks;
        }

        public static Dock Find(int ID)
        {
            var db = new Marina_Auth_AddedEntities();
            var docks = db.Docks.FirstOrDefault(d => d.ID == ID);
            return docks;
        }


        public IList GetAllSlipsListItems()
        {
            var db = new Marina_Auth_AddedEntities();
            var slips = db.Slips.Select(sp => new
            { 
              ID = sp.ID, 
              Width = sp.Width, 
              Length = sp.Length, 
              DockId = sp.DockID 
            }).ToList();
            return slips;
        }


        public static Slip FindSlip(int id)
        {
            var db = new Marina_Auth_AddedEntities();
            var slip = db.Slips.SingleOrDefault(s => s.ID == id);
            return slip;
        }

        public static List<Slip> getAvailableSlipByDock(int id)
        {
            var db = new Marina_Auth_AddedEntities();
            List<Slip> slips = (from slip in db.Slips
                                where (!(from lease in db.Leases
                                         select lease.SlipID).Contains(slip.ID)) && slip.DockID == id
                                select slip).ToList();
            return slips;
        }

        public static ICollection<Lease> GetLeasesByCustomerID(int ID)
        {
            var db = new Marina_Auth_AddedEntities();
           
            List<Lease> leases = (from lease in db.Leases
                                  where lease.CustomerID == ID
                                  select lease).ToList();
            return leases;
        }

        public static IList GetAllLeases(int ID)
        {
            var db = new Marina_Auth_AddedEntities();

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


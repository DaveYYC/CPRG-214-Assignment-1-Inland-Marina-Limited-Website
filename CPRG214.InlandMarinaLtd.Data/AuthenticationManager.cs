using System.Linq;

namespace CPRG214.InlandMarinaLtd.Data
{
    public class AuthenticationManager
    {
        public static CustomerDTO Authenticate(string username, string password)
        {
            CustomerDTO dto = null;
            var db = new Marina_Auth_AddedEntities();
            var auth = db.Authentications.
                FirstOrDefault(a => a.Username == username && a.Password == password);
            if (auth != null) // authentication passsed
            {
                dto = new CustomerDTO
                {
                    ID = auth.Customer.ID,
                    FullName = $"{auth.Customer.FirstName} {auth.Customer.LastName}"
                };
            }
            return dto;
        }

        public static Authentication Find(int customerID)
        {
            var db = new Marina_Auth_AddedEntities();
            var auth = db.Authentications.
                SingleOrDefault(a => a.CustomerID == customerID);
            return auth;
        }

        public static void Add(Authentication auth)
        {
            var db = new Marina_Auth_AddedEntities();
            db.Authentications.Add(auth);
            db.SaveChanges();
        }

        public static void Update(Authentication auth)
        {
            var db = new Marina_Auth_AddedEntities();
            var authFromContext = db.Authentications.SingleOrDefault(a => a.ID == auth.ID);
            authFromContext.Username = auth.Username;
            authFromContext.Password = auth.Password;
            authFromContext.Customer.FirstName = auth.Customer.FirstName;
            authFromContext.Customer.LastName = auth.Customer.LastName;
            authFromContext.Customer.Phone = auth.Customer.Phone;
            authFromContext.Customer.City = auth.Customer.City;
            db.SaveChanges();
        }
    }
}

    


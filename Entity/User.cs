using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity
{
    public class User
    {
        public decimal Document { get; set; }
        public String Name { get; set; }
        public String Password { get; set; }
        public int RolId { get; set; }
        public String RolName { get; set; }
        public string CompanyId { get; set; }
        public String CompanyName { get; set; }
        public String Email { get; set; }
        public DateTime CreationDate { get; set; }
        public DateTime LastAccess { get; set; }
    }
}

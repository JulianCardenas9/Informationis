using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity
{
    public class Company
    {
        public string Id{ get; set; }
        public string Name{ get; set; }
        public DateTime CreationDate { get; set; }
        public int LevelId { get; set; }
        public string LevelName { get; set; }
        public string ParentId { get; set; }
        public decimal CreationUser { get; set; }
        public decimal ManagerId { get; set; }
        public string UserName { get; set; }
        public string CreationUserName { get; set; }
        public string UserPassword { get; set; }
    }
}
 
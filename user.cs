using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WAD_Assignment_SF
{
    public class user
    {
        public int accID { get; set; }
        public int userID { get; set; }
        public string accName { get; set; }
        public string type { get; set; }
        public string email { get; set; }
        
    }
}
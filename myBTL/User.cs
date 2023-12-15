using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace myBTL
{
    public class User
    {
        public string tendn;
        public string email_dk;
        public string sdt_dk;
        public string matkhau;
        public string nlmatkhau_dk;

        public User(string tendn, string email_dk, string sdt_dk, string matkhau, string nlmatkhau_dk)
        {
            this.tendn = tendn;
            this.email_dk = email_dk;
            this.sdt_dk = sdt_dk;
            this.matkhau = matkhau;
            this.nlmatkhau_dk = nlmatkhau_dk;
        }
    }
}
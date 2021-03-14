using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL_WEB_NC
{
    public class Account
    {
        public string UserName { get; set; }
        public string Password { get; set; }
        public Account(string userName, string password)
        {
            this.UserName = userName;
            this.Password = password;
        }
    }
}
using System;
using System.Collections.Generic;

namespace BTL_WEB_NC
{
    internal class LoginHistory
    {
        public List<History> Items { get; set; }
        public LoginHistory()
        {
            Items = new List<History>();
        }
        public void add(string userName)
        {
            Items.Add(new History(userName));
        }
        public class History
        {
            public string UserName { get; set; }
            public DateTime Time { get; set; }
            public History(string userName)
            {
                this.Time = DateTime.Now;
                this.UserName = userName;
            }
        }
    }
}
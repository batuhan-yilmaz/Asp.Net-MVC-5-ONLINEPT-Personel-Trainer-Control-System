using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace onlinept.Models.Entity
{
    public class MessageCevapla
    {
        public int myconnectid { get; set; }
        public int messageid { get; set; }
        public int mymessageid { get; set; }
        public string youremail { get; set; }
        public string subject { get; set; }
        public string Body { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace onlinept.Controllers
{
    public class rand
    {

        public static int GenerateDigit(int EventID)
        {
            Random rng = new Random();
            // Assume there'd be more logic here really
            return rng.Next(101010101,990989099);
        }
    }
}

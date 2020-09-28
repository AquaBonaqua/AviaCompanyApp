using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AviaCompany
{
    public partial class UserActive
    {
        public string Color
        {
            get
            {
                string Color2;
                if (NoLogoutReason != null)
                {
                    Color2 = "Red";
                }




                else { Color2 = "Transparent"; }
                return Color2;
            }
        }

        public TimeSpan TimeSpent
        {
            get
            {


                var Time = TimeLogout - TimeLogin;


                return Time;
            }
        }

       
    }
}

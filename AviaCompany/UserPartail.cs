using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AviaCompany
{
    public partial class User
    {
        public int Age
        {
            get
            {
                
                DateTime now = DateTime.Today;
                int Age = now.Year - Birthdate.Value.Year;
                return Age;
            }
        }

        public string Color
        {
            get
            {
                string Color;
                if (RoleID == 1)

                {
                    if (Active == false) { Color = "Red"; }
                    else Color = "Green";

                }


                else if (Active == false) { Color = "Red"; }
                else { Color = "Transparent"; }
                return Color;
            }
        }

        public TimeSpan TimeSpentSum
        {
            get
            {


        
                return s1;
            }
        }

    }
}

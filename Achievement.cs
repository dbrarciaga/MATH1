using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MATH1
{
    public class Achievement
    {
        database blue = new database();
        //sammple string
        string testing = "<div class='w3-border'><div class='w3-grey' style='height:24px;width:90%'></div></div>";

        //progressbar
        public string grade1(int val)
        {
            string addition = blue.query2("select * from progress where stud_id = '"+val+"' and topic = 'ADDITION'");
            string subtraction = blue.query2("select * from progress where stud_id = '" + val + "' and topic = 'SUBTRACTION'");
            string multiplication = blue.query2("select * from progress where stud_id = '" + val + "' and topic = 'MULTIPLICATION'");
            string division = blue.query2("select * from progress where stud_id = '" + val + "' and topic = 'DIVISION'");
            int num = 0;
            string final = "<div class='w3-border w3-white'><div class='w3-green' style='height:24px;width:1%'></div></div>";
            if(addition != null)
            {
                num = num + 1;
            }
            if (subtraction != null)
            {
                num = num + 1;
            }
            if (multiplication != null)
            {
                num = num + 1;
            }
            if (division != null)
            {
                num = num + 1;
            }
            switch(num)
            {
                case 1:
                    final =  "<div class='w3-border w3-white'><div class='w3-green' style='height:24px;width:25%'>25%</div></div>";
                    break;
                case 2:
                    final = "<div class='w3-border w3-white'><div class='w3-green' style='height:24px;width:50%'>50%</div></div>";
                    break;
                case 3:
                    final = "<div class='w3-border w3-white'><div class='w3-green' style='height:24px;width:75%'>75%</div></div>";
                    break;
                case 4:
                    final = "<div class='w3-border w3-white'><div class='w3-green' style='height:24px;width:100%'>100%</div></div>";
                    break;
                default:
                    final = "<div class='w3-border w3-white'><div class='w3-green' style='height:24px;width:1%'></div></div>";
                    break;
            }
            return final;
        }
    }
}
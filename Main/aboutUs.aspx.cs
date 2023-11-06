using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MATH1.Main
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        database blue = new database();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = blue.query2("select * from progress where stud_id = '" + 20231069 + "' and topic = 'ADDITION'");
        }
    }
}
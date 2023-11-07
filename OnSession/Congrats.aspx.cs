using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MATH1.OnSession
{
    public partial class WebForm16 : System.Web.UI.Page
    {
        database blue = new database();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = blue.getGradeLevel(Session["username"].ToString());
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MATH1.OnSession
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        profile blue = new profile();
        database waow = new database();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"]==null)
            {
                Response.Redirect("/Main/Login/LogIn.aspx");
            }
            Label1.Text = blue.getFullname(Session["username"].ToString());
            Label2.Text = waow.getGradeLevel(Session["username"].ToString());
        }
    }
}
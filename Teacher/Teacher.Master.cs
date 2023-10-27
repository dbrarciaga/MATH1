using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MATH1.Teacher
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        database blue = new database();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("/Main/Login/LogIn.aspx");
            }           
        }
        protected void logOut_Click(object sender, EventArgs e)
        {

            Session["username"] = null;
            Session.Clear();          
            Response.Redirect("/Main/Login/LogIn.aspx");
        }
    }
}
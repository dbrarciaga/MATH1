using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MATH1.Admin
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["username"] == null)
            {
                Response.Redirect("/Main/Login/LogIn.aspx");
            }
            Label1.Text = Session["username"].ToString();
            
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Remove("username");
            Response.Redirect("/Main/NewHomePage.aspx");
        }
    }
}
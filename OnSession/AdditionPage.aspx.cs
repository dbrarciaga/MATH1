using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MATH1.OnSession
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        database blue = new database();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["username"]==null)
            {
                Response.Redirect("/Main/LogIn/LogIn.aspx");
            }
           

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Story/Addition.aspx");
        }
    }
}
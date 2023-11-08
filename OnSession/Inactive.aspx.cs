using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MATH1.OnSession
{
    public partial class WebForm18 : System.Web.UI.Page
    {
        database blue = new database();
        protected void Page_Load(object sender, EventArgs e)
        {            
            int id = blue.getId(Session["username"].ToString());
            string check = blue.query2("SELECT STUD_ID FROM ACTIVATION WHERE STUD_ID = '"+id+"'");
            if(check == id.ToString())
            {
                active.Visible = true;
                inactive.Visible = false;
            }
            else
            {
                active.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = blue.getId(Session["username"].ToString());
            string err = blue.query2("insert into activation(stud_id) values ('"+id+"')");
            Response.Write(err);
            inactive.Visible = false;
        }
    }
}
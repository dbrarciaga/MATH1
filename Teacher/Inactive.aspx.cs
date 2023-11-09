using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MATH1.Teacher
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        database blue = new database();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            string id = blue.query2("select teacher_id from teacher where username='" + Session["username"].ToString() + "'");
            Response.Write(id);
            string check = blue.query2("SELECT teacher_ID FROM activation_teacher WHERE teacher_ID = '" + id + "'");
            if (check == id.ToString())
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
            string id = blue.query2("select teacher_id from teacher where username='" + Session["username"].ToString() + "'");
            blue.query2("insert into activation_teacher(teacher_id) values ('" + id + "')");
            active.Visible = true;
            inactive.Visible = false;
        }
    }
}
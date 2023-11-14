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
            Button1.Visible = false;
            if(!IsPostBack)
            {
                if (Button1.Visible)
                {
                    Label1.Text = "true";
                   
                }
                else
                {
                    Label1.Text = "false";
                    
                }
            }
           
            //int id = blue.getId(Session["username"].ToString());
            //blue.query2("insert into achievements(score_title, score, stud_id, teacher_id, typeOfTask) values ('quiz',69,'"+blue.getId(Session["username"].ToString())+"','"+ blue.getTeacherID(id.ToString()) + "','quiz')");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
          
        }
    }
}
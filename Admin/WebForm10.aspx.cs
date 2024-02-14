using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MATH1.Admin
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        Achievement waow = new Achievement();
        database blue = new database();
        protected void Page_Load(object sender, EventArgs e)
        {
            div1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            div1.Visible = true;
            F_name.Text = "Student: " + blue.query2("select concat(FirstName,' ',LastName) as 'Name' from students where stud_id='" +search.Text + "' or username = '" + search.Text + "'");
            string GetStudId = blue.query2("select stud_id from students where username ='"+search.Text+"'");
            GradeLevel.Text = blue.query2("select gradeLevel from progress where stud_id = '" + GetStudId + "'");

            try
            {
                switch (GradeLevel.Text)
                {
                    case "1":
                        progressBar.Text = waow.grade1(int.Parse(GetStudId), GradeLevel.Text);
                        break;
                    case "2":
                        progressBar.Text = waow.grade1(int.Parse(GetStudId), GradeLevel.Text);
                        break;
                    case "3":
                        progressBar.Text = waow.grade3(int.Parse(GetStudId), GradeLevel.Text);
                        break;
                    case "4":
                        progressBar.Text = waow.grade3(int.Parse(GetStudId), GradeLevel.Text);
                        break;
                    default:
                        progressBar.Text = waow.grade3(int.Parse(GetStudId), GradeLevel.Text);
                        break;

                }
            }
            catch(Exception error)
            {
                Response.Write(error);
            }
        }
    }
}
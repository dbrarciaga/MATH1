using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace MATH1.Admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        database blue = new database();
        protected void Page_Load(object sender, EventArgs e)
        {

            teacher.Text = blue.query2("select count(teacher_id) from teacher");
            students.Text = blue.query2("select count(stud_id) from students");
            enrollCount.Text = blue.query2("select count(enroll_id) from enrollmentrequest");
            Label1.Text = blue.query2("select count(ID) from auditlog");
        }

           




    }
}




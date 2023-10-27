using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MATH1.Main
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        RegisterClass blue = new RegisterClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            user.Text = "Username: " + blue.username1;
            Fname.Text = "Frist Name: " + blue.Fname1;
            Lname.Text = "Last Name: " + blue.Lname1;
            age.Text = "Age: " + blue.age1;
            level.Text = "Grade level: " + blue.GradeLevel1;
        }

        protected void register_Click(object sender, EventArgs e)
        {
            try
            {
                blue.InputDetails();
                Response.Redirect("/Main/WelcomePage.aspx");
            }
            catch(Exception err)
            {
                Label1.Text = err.ToString();
            }
        }
    }
}
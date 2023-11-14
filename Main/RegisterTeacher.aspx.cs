using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MATH1.Main
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        database blue = new database();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {   
            if(F_Name.Text == "" && L_Name.Text == "" && email.Text == "")
            {
                Label1.Text = "<div class='w3-red'> Enter the required fields! </div>";
            }
            else
            {
                blue.query2("INSERT INTO `applicants`(`FirstName`, `LastName`, `email`, `pitch`) VALUES" +
                    "('"+F_Name.Text+"','"+L_Name.Text+"','"+email.Text+"','"+pitch.Text+"')");
                submit.Visible = false;
                div1.Visible = false;
                div2.Visible = false;
                Label1.Text = "<h1> You sent a application </h1>";

            }
        }
    }
}
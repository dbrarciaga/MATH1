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
        RegisterClass waow = new RegisterClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string validation = blue.query2("Select * from applicants where email = '"+email.Text+"'");
            Response.Write(validation);
            string TempId = waow.getId_Teacher() ;
            if(F_Name.Text == "" && L_Name.Text == "" && email.Text == "")
            {
                Label1.Text = "<div class='w3-red'> Enter the required fields! </div>";
            }
            else if(int.Parse(validation) >= 1)
            {
                Label1.Text = "<div class='w3-red'> The email is already exist </div>";
            }
            else
            {
                //for application page on admin account
                blue.query2("INSERT INTO `applicants`(`FirstName`, `LastName`, `email`, `pitch`) VALUES" +
                    "('"+F_Name.Text+"','"+L_Name.Text+"','"+email.Text+"','"+pitch.Text+"')");
                //insert teacher's account
                blue.query2("INSERT INTO `teacher`(`teacher_id`, `username`, `pass`, `email`, `FirstName`, `LastName`, `birthday`,`stats`) VALUES ('"+TempId+"','"+username.Text+"','"+password.Text+"','"+email.Text+"','"+F_Name.Text+"','"+L_Name.Text+"','"+bday.Text+"','inactive')");
                submit.Visible = false;
                div1.Visible = false;
                div2.Visible = false;
                div3.Visible = false;
                Label1.Text = "<h1> You sent a application "+TempId+" </h1>";

            }
        }
    }
}
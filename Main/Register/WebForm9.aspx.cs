using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MATH1.Main
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        RegisterClass blue = new RegisterClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void next_Click(object sender, EventArgs e)
        {
            if(blue.Email_Checker(email.Text))
            {
                Label1.Text = "invalid email!";
            }
            if(blue.hasSpecialChar(username.Text))
            {
                Label1.Text = "username has a special character! ";
            }
            if (username.Text.Length < 2)
            {
                Label1.Text = "password should be more than 2 characters ";
            }
            if (pass.Text.Length < 4)
            {
                Label1.Text = "password should be more than 4 characters ";
            }
            else
            {
                try
                {
                    if (username.Text == "" || pass.Text == "")
                    {
                        Label1.Text = "Enter the Required fields!";
                    }
                    else
                    {
                        RegisterClass obj = new RegisterClass(email.Text,username.Text, pass.Text);
                        Response.Redirect("/Main/Register/WebForm11.aspx");

                    }
                }
                catch (Exception err)
                {
                    Label1.Text = err.ToString();
                }
            }
         
        }
    }
}
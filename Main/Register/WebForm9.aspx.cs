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
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void next_Click(object sender, EventArgs e)
        {
            try
            {
                if(username.Text == "" || pass.Text == "")
                {
                    Label1.Text = "Enter the Required fields!";
                }
                else
                {
                    RegisterClass obj = new RegisterClass(username.Text, pass.Text);
                    Response.Redirect("/Main/Register/WebForm11.aspx");
                   
                }
            }
            catch(Exception err)
            {
                Label1.Text = err.ToString();
            }
        }
    }
}
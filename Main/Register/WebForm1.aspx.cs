using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MATH1.Main
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        RegisterClass blue = new RegisterClass();
        string age = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            DropDownList1.Items.Add("1");
            DropDownList1.Items.Add("2");
            DropDownList1.Items.Add("3");
            DropDownList1.Items.Add("4");
            DropDownList1.Items.Add("5");
            DropDownList1.Items.Add("6");
        }

        protected void next_Click(object sender, EventArgs e)
        {
            try
            {
                if (blue.hasSpecialChar(fname.Text))
                {
                    Label1.Text = "field 'Frist Name' has a special character";
                }
                else if (blue.hasSpecialChar(bday.Text))
                {
                    Label1.Text = "field 'age' has a special character";
                }
                else if (blue.hasSpecialChar(lname.Text))
                {
                    Label1.Text = "field 'Last Name' has a special character";
                }               
                else if (fname.Text.Length < 2)
                {
                    Label1.Text = "field 'Frist Name' should be more than two (2) charaters";
                }
                else if (lname.Text.Length < 2)
                {
                    Label1.Text = "field 'Last Name' should be more than two (2) charaters";
                }
                else
                {
                    if (fname.Text == "" || lname.Text == "" || bday.Text == "")
                    {
                        Label1.Text = "Enter the required fields! ";
                    }
                    else
                    {
                        RegisterClass obj = new RegisterClass(fname.Text, lname.Text, int.Parse(bday.Text), int.Parse(DropDownList1.SelectedValue));
                        Response.Redirect("/Main/Register/WebForm9.aspx");
                    }

                }
            }
            catch (Exception err)
            {
                Label1.Text = err.ToString();
            }         
        }
    }
}
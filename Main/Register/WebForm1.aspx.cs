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
                if(fname.Text=="" || lname.Text == "" || age.Text == "")
                {
                    Label1.Text = "Enter the required fields! ";
                }
                else
                {
                    RegisterClass obj = new RegisterClass(fname.Text, lname.Text, Int32.Parse(age.Text), Int32.Parse(DropDownList1.SelectedItem.Text));
                    Response.Redirect("/Main/Register/WebForm9.aspx");
                }
            }
            catch(Exception err)
            {
                Label1.Text = err.ToString();
            }
           
            
        }
    }
}
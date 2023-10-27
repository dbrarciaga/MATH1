using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace MATH1.Main
{
    public partial class WebForm6 : System.Web.UI.Page
    {

        
        protected void Page_Load(object sender, EventArgs e)
        {  
            DropDownList1.Items.Add("1");
            DropDownList1.Items.Add("2");
            DropDownList1.Items.Add("3");
            DropDownList1.Items.Add("4");
            DropDownList1.Items.Add("5");
            DropDownList1.Items.Add("6");
            Panel1.Visible = true;
            Panel2.Visible = true;
            Panel3.Visible = true;
            
        }

        protected void register_Click(object sender, EventArgs e)
        {
            
            string connectionString = "server=localhost;user id=root;database=math1";
            MySqlConnection conn = new MySqlConnection(connectionString);
            MySqlCommand cmd = new MySqlCommand("INSERT INTO students(`username`, `pass`, `FirsName`, `LastName`, `age`,`gradeLevel`,`score`,`userType`) values ('" + username.Text + "','" + password.Text + "','" + f_Name.Text + "','" + l_Name.Text + "','" + TextBox1.Text + "','"+ DropDownList1.SelectedItem.Text + "','0','student');", conn);
            if (username.Text == "" & password.Text == "" & f_Name.Text == "" & l_Name.Text == "" & TextBox1.Text == "")
            {

                Panel3.Visible = true;
                Label1.Text = "Fill the required fields!" + password.Text;
            }
            else
            {
               
                try
                {

                    conn.Open();
                    cmd.ExecuteNonQuery();
                    Response.Redirect("/Main/WelcomePage.aspx");

                }
                catch (Exception error)
                {
                    Label1.Text = error.ToString();
                }
            }
        }

       
    }
}
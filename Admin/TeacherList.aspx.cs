using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace MATH1.Admin
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        database blue = new database();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            updatePanel.Visible = false;
            string waow2 = "server=localhost;user id=root;database=math1";
            using (MySqlConnection cons = new MySqlConnection(waow2))
            { 
                try
                {

                    cons.Open();

                    MySqlCommand utos = new MySqlCommand("Select teacher_id, concat(FirstName,' ',LastName) as 'Name', username as 'Username', stats as 'Status' from teacher  ", cons);
                    MySqlDataReader myRead = utos.ExecuteReader();

                    if (myRead.HasRows == true)
                    {
                        GridView1.DataSource = myRead;
                        GridView1.DataBind();
                        Label1.Text = " ";
                    }
                    else
                    {
                        Label1.Text = "<div class='button1'> user not found! </div>";

                    }

                }
                catch (Exception err)
                {
                    Response.Write(err);
                }
                cons.Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {          
            if(TextBox1.Text.Length == 0)
            {
                Label1.Text = "Enter the required field ! ! !";
                updatePanel.Visible = false;
            }                
                string waow = "server=localhost;user id=root;database=math1";
                using (MySqlConnection cons = new MySqlConnection(waow))
                {
                    try
                    {

                        cons.Open();

                        MySqlCommand utos = new MySqlCommand("Select teacher_id as 'ID', concat(FirstName,' ',LastName) as 'Name', username from teacher where teacher_id = '" + TextBox1.Text + "' or username = '" + TextBox1.Text + "'  ", cons);
                        MySqlDataReader myRead = utos.ExecuteReader();

                        if (myRead.HasRows == true)
                        {
                            GridView1.DataSource = myRead;
                            GridView1.DataBind();
                            Label1.Text = " ";
                        }
                        else
                        {
                            Label1.Text = "<div class='w3-button w3-red'> user not found! </div>";

                        }

                    }
                    catch (Exception err)
                    {
                        Response.Write(err);
                    }
                    cons.Close();
                }
                statusList.Items.Add("active");
                statusList.Items.Add("inactive");
                updatePanel.Visible = true;
                status.Text ="Status: " + blue.query2("select stats from teacher where username = '" + TextBox1.Text + "' or teacher_id = '" + TextBox1.Text + "'");
                fullname.Text = blue.query2("select concat(FirstName,' ',LastName) from teacher where username = '" + TextBox1.Text + "' or teacher_id = '" + TextBox1.Text + "'");
                name.Text = blue.query2("select username from teacher where username ='" + TextBox1.Text + "' or teacher_id = '" + TextBox1.Text + "' ");
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            blue.query2("update teacher set stats = '"+statusList.SelectedValue+"' where username = '"+name.Text+"'");
            Label1.Text = "<div class='w3-button w3-green'> user updated </div>";
        }
    }
}
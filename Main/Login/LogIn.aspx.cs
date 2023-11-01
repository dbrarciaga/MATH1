using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace MATH1.Main
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            database testing = new database();
            string user = username.Text;
            string pass = password.Text;           
            string waow = "server=localhost;user id=root;database=math1";
            using (MySqlConnection cons = new MySqlConnection(waow))
            {
               


                string query = "SELECT stud_id from students where username = @user and pass =@pass";

                try
                {
                    cons.Open();
                    using (MySqlCommand cmd = new MySqlCommand(query, cons))
                    {
                        cmd.Parameters.AddWithValue("@user", user);
                        cmd.Parameters.AddWithValue("@pass", pass);
                        if (cmd.ExecuteScalar() != null)
                        {
                            
                            Session["username"] = username.Text;
                            Label1.Text = "running " + cmd.ExecuteScalar().ToString();
                            string v = Session["username"].ToString();
                            
                            Response.Redirect("/OnSession/dashboard/dasdboard.aspx");
                        }
                        else if(username.Text == "admin" && password.Text == "1234")
                        {
                            Session["username"] = username.Text;
                            Response.Redirect("/Admin/AdminDash.aspx");
                        }
                        else if (username.Text == "" || password.Text == "")
                        {
                            Label1.Text = "fill the required fields";
                        }

                        else
                        {
                            Label1.Text = "Invalid username or password";
                        }

                    }
                }
                catch (Exception error)
                {
                    Label1.Text = error.ToString();
                }
            }
        }
    }
}
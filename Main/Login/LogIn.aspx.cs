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
        string ngayon = DateTime.Now.ToString("MM/dd/yyyy HH:mm:ss");
         
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
                try
                {
                    string query1 = "SELECT teacher_id from teacher where username = @user and pass =@pass";
                    cons.Open();
                    using (MySqlCommand utos = new MySqlCommand(query1,cons))
                    {
                        utos.Parameters.AddWithValue("@user", user);
                        utos.Parameters.AddWithValue("@pass", pass);
                        if(utos.ExecuteScalar() != null)
                        {
                            Session["username"] = username.Text;
                            Label1.Text = "running " + utos.ExecuteScalar().ToString();
                            string v = Session["username"].ToString();
                            testing.query("insert into auditlog(actionTaken,username,dateaction) values('teacher login','" + username.Text + "','" + ngayon + "')");
                            Response.Redirect("/Teacher/WebForm1.aspx");
                        }
                    }
                    cons.Close();
                }
                catch(Exception error2)
                {
                    Response.Write(error2);
                }
                //students and admin
                try
                {
                    string query2 = "SELECT stud_id from students where username = @user and pass =@pass";
                    cons.Open();
                    using (MySqlCommand cmd = new MySqlCommand(query2, cons))
                    {
                        cmd.Parameters.AddWithValue("@user", user);
                        cmd.Parameters.AddWithValue("@pass", pass);
                        if (cmd.ExecuteScalar() != null)
                        {                          
                            Session["username"] = username.Text;
                            Label1.Text = "running " + cmd.ExecuteScalar().ToString();
                            string v = Session["username"].ToString();
                            testing.query("insert into auditlog(actionTaken,username,dateaction) values('student login','" + username.Text + "','" + ngayon + "')");
                            Response.Redirect("/OnSession/dashboard/dasdboard.aspx");
                        }
                        else if(username.Text == "admin" && password.Text == "1234")
                        {
                            Session["username"] = username.Text;
                            testing.query("insert into auditlog(actionTaken,username,dateAction) values ('admin login','"+username.Text+"','"+ ngayon +"')");
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
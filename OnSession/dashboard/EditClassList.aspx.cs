using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace MATH1.OnSession
{
    public partial class WebForm7 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if(Session["username"]==null)
                {
                    Response.Redirect("/Main/Login/LogIn.aspx");
                }
                else
                {
                    Label1.Text = Session["username"].ToString();
                }
            }
            catch(Exception wow)
            {
                Response.Redirect("/Main/NewHomePage.aspx");
            }
            //////////////////////////////////////////
            ///
            string waow = "server=localhost;user id=root;database=math1";
            using (MySqlConnection cons = new MySqlConnection(waow))
            {
                try
                {

                    cons.Open();

                    MySqlCommand utos = new MySqlCommand("select * from classlist where teacher = '"+Session["username"].ToString()+"'", cons);
                    MySqlDataReader myRead = utos.ExecuteReader();
                    if (myRead.HasRows == true)
                    {
                        GridView1.DataSource = myRead;
                        GridView1.DataBind();
                        Label1.Text = "    ";
                    }
                    else
                    {
                        Label1.Text = "<div class='button1'> user not found! </div>";

                    }
                }
                catch (Exception err)
                {
                    Label1.Text = err.ToString();
                }
            }



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(search.Text == "")
            {
                Label1.Text = "Enter the required fields!";
                return;
            }
            string waow = "server=localhost;user id=root;database=math1";
            using (MySqlConnection cons = new MySqlConnection(waow))
            {
                try
                {

                    cons.Open();

                    MySqlCommand utos = new MySqlCommand("select id,username,gradeLevel from students where username = '" + search.Text + "' or id = '" + search.Text + "' ", cons);
                    MySqlDataReader myRead = utos.ExecuteReader();
                    if (myRead.HasRows == true)
                    {
                        GridView1.DataSource = myRead;
                        GridView1.DataBind();
                        Label1.Text = "    ";
                    }
                    else
                    {
                        Label1.Text = "<div class='button1'> user not found! </div>";

                    }
                }
                catch (Exception err)
                {
                    Label1.Text = err.ToString();
                }
            }
        }

        protected void Add_Click(object sender, EventArgs e)
        {
            if (search.Text == "")
            {
                Label1.Text = "Enter the required fields!";
                return;
            }
            database blue = new database();
            string connectionString = "server=localhost;user id=root;database=math1";
            MySqlConnection conn = new MySqlConnection(connectionString);
            MySqlCommand cmd = new MySqlCommand("INSERT INTO classlist(`class_id`,`teacher`,`stud_id`,`f_name`) values ('" + search.Text + "','"+Session["username"].ToString()+"','"+blue.getId(search.Text) +"','"+blue.getInfo(search.Text)+"');", conn);

                try
                {

                    conn.Open();
                    cmd.ExecuteNonQuery();
                     Label1.Text = "student has been added to your class";
                    conn.Close();

                }
                catch (Exception error)
                {
                    Label1.Text = error.ToString();
                }
           
        }

        protected void Remove_Click(object sender, EventArgs e)
        {
            if (search.Text == "")
            {
                Label1.Text = "Enter the required fields!";
                return;
            }
            string connectionString = "server=localhost;user id=root;database=math1";
            MySqlConnection conn = new MySqlConnection(connectionString);
            MySqlCommand cmd = new MySqlCommand("DELETE FROM classlist where stud_id = '"+search.Text+"'",conn);
            try
            {
                conn.Open();
                int waow = cmd.ExecuteNonQuery();
                if(waow > 0)
                {
                    Label1.Text = "Student has been dropped";
                }
                else
                {
                    Label1.Text = "No rows affected";
                }
                
            }
            catch(Exception err)
            {
                Label1.Text = err.ToString();
            }
        }
    }
}
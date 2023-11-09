using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace MATH1.Teacher
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        database blue = new database();
        int gr1 = 0;
        int gr2 = 0;
        int gr3 = 0;
        int gr4 = 0;
        int gr5 = 0;
        int gr6 = 0;

        void getRole(string wow)
        {
            try
            {
                string connectionString = "Server=localhost;Database=math1;Uid=root;";
                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    connection.Open();
                    string query = "SELECT * FROM role where teacherID ='" + blue.getId(wow) + "'";
                    using (MySqlCommand command = new MySqlCommand(query, connection))
                    {
                        using (MySqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                gr1 = Int32.Parse(reader.GetString("grd1"));
                                gr2 = Int32.Parse(reader.GetString("grd2"));
                                gr3 = Int32.Parse(reader.GetString("grd3"));
                                gr4 = Int32.Parse(reader.GetString("grd4"));
                                gr5 = Int32.Parse(reader.GetString("grd5"));
                                gr6 = Int32.Parse(reader.GetString("grd6"));

                            }
                            else
                            {
                                Label1.Text = "You dont have a class list";
                            }
                        }
                    }
                }
            }
            catch (Exception error)
            {
                Label1.Text = error.ToString();
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = blue.query2("select teacher_id from teacher where username='"+Session["username"].ToString()+"'");
            if (blue.query2("select stats from teacher where teacher_id = '" + id + "'") == "inactive")
            {
                Response.Redirect("/Teacher/Inactive.aspx");
            }
            LinkButton1.Visible = false;
            LinkButton2.Visible = false;
            LinkButton3.Visible = false;
            LinkButton4.Visible = false;
            LinkButton5.Visible = false;
            LinkButton6.Visible = false;

            if (Session["username"] == null)
            {
                Response.Redirect("/Main/NewHomePage.aspx");
            }
            else
            {
                Label2.Text = blue.query2("Select FirstName from teacher where username = '"+Session["username"].ToString()+"'");
                getRole(Session["username"].ToString());
            }
            if (gr1 == 1)
            {
                LinkButton1.Visible = true;
            }
            if (gr2 == 1)
            {
                LinkButton2.Visible = true;
            }
            if (gr3 == 1)
            {
                LinkButton3.Visible = true;
            }
            if (gr4 == 1)
            {
                LinkButton4.Visible = true;
            }
            if (gr5 == 1)
            {
                LinkButton5.Visible = true;
            }
            if (gr6 == 1)
            {
                LinkButton6.Visible = true;
            }
            string waow = "server=localhost;user id=root;database=math1";
            using (MySqlConnection cons = new MySqlConnection(waow))
            {
                string teacher = blue.query2("select teacher_id from teacher where username='"+Session["username"]+"'");

                try
                {

                    cons.Open();

                    MySqlCommand utos = new MySqlCommand("select concat(students.FirstName ,' ', students.LastName) as 'Student Name', students.GradeLevel as 'Grade', section from classlist inner join students on classlist.stud_id = students.stud_id where teacher_id = '" + teacher + "'  ", cons);
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
                    Label1.Text = err.ToString();
                }
                cons.Close();
            }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            blue.Role = 1;
            Response.Redirect("/OnSession/ClassList.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            blue.Role = 2;
            Response.Redirect("/OnSession/ClassList.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            blue.Role = 3;
            Response.Redirect("/OnSession/ClassList.aspx");
        }
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            blue.Role = 4;
            Response.Redirect("/OnSession/ClassList.aspx");
        }
        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            blue.Role = 5;
            Response.Redirect("/OnSession/ClassList.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            blue.Role = 6;
            Response.Redirect("/OnSession/ClassList.aspx");
        }
    }
}
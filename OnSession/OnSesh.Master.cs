using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace MATH1.OnSession
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        database blue = new database();
        int score = 0;
        int gradeLevel = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            gradeLevel = gradeLevel = Int32.Parse(blue.getGradeLevel(Session["username"].ToString()));

            if (gradeLevel == 1 || gradeLevel == 2)
            {
                Label1.Text = Int32.Parse(blue.getScore(Session["username"].ToString())).ToString() + "/16";
            }
            else if (gradeLevel == 3 || gradeLevel == 4)
            {
                Label1.Text = Int32.Parse(blue.getScore(Session["username"].ToString())).ToString() + "/24";
            }
            else if (gradeLevel == 5 || gradeLevel == 6)
            {
                Label1.Text = Int32.Parse(blue.getScore(Session["username"].ToString())).ToString() + "/34";
            }

            string val = Session["username"].ToString();
            string waow = "server=localhost;user id=root;database=math1";
            using (MySqlConnection cons = new MySqlConnection(waow))
            {
                cons.Open();

                string query = "SELECT id FROM students where username =@user";
                try
                {
                    using (MySqlCommand cmd = new MySqlCommand(query, cons))
                    {
                        cmd.Parameters.AddWithValue("@user", val);

                        if (cmd.ExecuteScalar() != null)
                        {
                            val = cmd.ExecuteScalar().ToString();
                            //blue.query("select teacher from classlist where stud_id = '"+ Session["username"] + "'");
                            Label2.Text = blue.getInfo(val);
                            cons.Close();

                        }


                    }
                }
                catch (Exception error)
                {
             
                }
            }

            ////if no teacher star is hidden





        }
        protected void logOut_Click(object sender, EventArgs e)
        {

            Session.Abandon();
            Session.Clear();
            Session.RemoveAll();
            Response.Redirect("/Main/Login/LogIn.aspx");
        }


    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace MATH1.OnSession
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        database blue = new database();
        static int requestCount = 0;
        string val = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            
               numReq.Text = requestCount.ToString();
           if(Session["username"]!=null)
            {
               val = Session["username"].ToString();
            }
            else
            {
                Response.Redirect("/Main/Login/LogIn.aspx");
            }

            string waow = "server=localhost;user id=root;database=math1";
            using (MySqlConnection cons = new MySqlConnection(waow))
            {
                cons.Open();

                string query = "SELECT stud_id FROM students where username =@user";
                try
                {
                    using (MySqlCommand cmd = new MySqlCommand(query, cons))
                    {
                        cmd.Parameters.AddWithValue("@user", val);

                        if (cmd.ExecuteScalar() != null)
                        {
                            val = cmd.ExecuteScalar().ToString();
                            //blue.query("select teacher from classlist where stud_id = '"+ Session["username"] + "'");
                            teacher.Text = blue.getTeacher(val);
                            Label1.Text = blue.getInfo(val);
                            cons.Close();

                        }


                    }
                }
                catch (Exception error)
                {
                    teacher.Text = error.ToString();
                }
            }

            ///////////////////

            
                if (teacher.Text == "No teacher assigned")//if no teacher assigned
               {
                   chal.Visible = false;
                   learn.Visible = false;
                   prog.Visible = false;
                   soon.Visible = true;
                   no_teacher.Visible = true;
                   request.Visible = true;

               }

            
            if (Session["username"] == null)
            {
                Response.Redirect("/Main/Login/LogIn.aspx");
            }
            //user.Text = Session["username"].ToString();            

          







        }
        protected void request_Click(object sender, EventArgs eventArgs)
        {
            string first = fname.Value;
            string last = lname.Value;
            int gradeLevel = Int32.Parse(blue.getGradeLevel(Session["username"].ToString()));
            string glevel=gradeLevel.ToString();
 
            if (requestCount ==3)
            {
                Label2.Text=requestCount.ToString();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('You have Exceeded your Maximum request try. Please Wait')", true);
                no_teacher.Visible = false;
                request.Visible = false;
                Div1.Visible = true;
            }
            else if(first=="" || last=="")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter All Fields')", true);

            }
            else
            {
                requestCount = requestCount + 1;
                string connectionString = "server=localhost;user id=root;database=math1";
                MySqlConnection conn = new MySqlConnection(connectionString);
                MySqlCommand cmd = new MySqlCommand("INSERT INTO enrollmentrequest(`stud_id`,`FirstName`, `LastName`, `GradeLevel`) values ('" + blue.getId(Session["username"].ToString()) + "','" + first + "','" + last + "','" + glevel + "');", conn);
                MySqlCommand cmd2 = new MySqlCommand("INSERT INTO enrollmentrequest(`stud_id`,`FirstName`, `LastName`, `GradeLevel`) values ('" + blue.getId(Session["username"].ToString()) + "','" + first + "','" + last + "','" + glevel + "');", conn);
                try
                {

                    conn.Open();
                    cmd.ExecuteNonQuery();
                    Response.Redirect("/OnSession/dashboard/dasdboard.aspx");

                    cmd2.ExecuteNonQuery();

                   
                }
                
                catch (Exception error)
                {
                    error1.Text = error.ToString();
                }
                
            }
           
        }
    }
}
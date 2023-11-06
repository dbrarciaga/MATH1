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
        string requestCount = "";
        string val = "";
        protected void Page_Load(object sender, EventArgs e)
        {
        int id = blue.getId(Session["username"].ToString());
          

            
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

            string check = blue.query2("select stud_id from enrollmentrequest where stud_id = '" + id + "'");
            if (teacher.Text == "No teacher assigned")//if no teacher assigned
            {
                chal.Visible = false;
                learn.Visible = false;
                prog.Visible = false;
                soon.Visible = true;
                no_teacher.Visible = true;
                request.Visible = true;

            }
            //if existing
            if (check == id.ToString())
            {
                no_teacher.Visible = false;
                Div1.Visible = true;
            }

            
            if (Session["username"] == null)
            {
                Response.Redirect("/Main/Login/LogIn.aspx");
            }
            //user.Text = Session["username"].ToString();            

          







        }
        protected void request_Click(object sender, EventArgs eventArgs)
        {
            string ngayon = DateTime.Now.ToString("MM/dd/yyyy hh:mm:ss"); 
            int id = blue.getId(Session["username"].ToString());
            string check = blue.query("select * from enrollmentrequest where stud_id = '"+id+"'");
            if(check == null)
            {
                Div1.Visible = true;
                no_teacher.Visible = false;

            }
            else
            {
                blue.query2("insert into enrollmentrequest(stud_id) values ('"+id+"')");
                blue.query2("insert into auditlog(actiontaken,username,dateAction) values ('request enrollment','"+Session["username"].ToString()+"','"+ngayon+"')");
                Div1.Visible = true;
            }
        }
    }
}
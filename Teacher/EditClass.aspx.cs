using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace MATH1.Teacher
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        database blue = new database();
        string user = "";
        static string ID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            ID = blue.query2("select teacher_id from teacher where username = '"+ Session["username"].ToString() + "'");
            if (!IsPostBack)
            {
                //dropdown for student
                string waow = "server=localhost;user id=root;database=math1";
                Response.Write(ID);
                using (MySqlConnection cons = new MySqlConnection(waow))
                {
                    cons.Open();
                    string query = "SELECT classlist.stud_id as 'ID', concat(students.FirstName,' ',students.LastName) as 'Name' FROM `classlist` inner join students on classlist.stud_id = students.stud_id where classlist.teacher_id ='" + ID+"';";
                    try
                    {
                        using (MySqlCommand cmd = new MySqlCommand(query, cons))
                        {

                            studentList.DataSource = cmd.ExecuteReader();
                            studentList.DataTextField = "Name";
                            studentList.DataValueField = "ID";
                            studentList.DataBind();
                            studentList.Items.Add("select");

                            cons.Close();
                        }
                    }
                    catch (Exception error)
                    {
                        Response.Write(error);
                    }

                }
                //end of dropdownlist datasource



            }


        }

        protected void studentList_SelectedIndexChanged(object sender, EventArgs e)
        {
            string waow2 = "server=localhost;user id=root;database=math1";
            using (MySqlConnection cons = new MySqlConnection(waow2))
            {
                try
                {

                    cons.Open();

                    MySqlCommand utos = new MySqlCommand("select students.stud_id as 'ID', concat(students.FirstName,' ',students.LastName) as 'Student Name' from classlist inner join students on classlist.stud_id = students.stud_id where classlist.stud_id ='"+studentList.SelectedValue+"'", cons);
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

        protected void drop_Click(object sender, EventArgs e)
        {
            blue.query2("delete from classlist where stud_id ='"+studentList.SelectedValue+"'");
            blue.query2("insert into auditlog(actionTaken, username, dateAction) values ('Dropped a student ','"+Session["username"].ToString()+"','"+DateTime.Now.ToString("MM/dd/yyyy hh:mm:ss")+"')");
            Label1.Text = "Student has been dropped!";
        }
    }
}
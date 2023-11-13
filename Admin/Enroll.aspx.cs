using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace MATH1.Admin
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        database blue = new database();
        protected void Page_Load(object sender, EventArgs e)
        {
            GradeLevel.Items.Add("1");
            GradeLevel.Items.Add("2");
            GradeLevel.Items.Add("3");
            GradeLevel.Items.Add("4");
            GradeLevel.Items.Add("5");
            GradeLevel.Items.Add("6");
            if (!IsPostBack)
            {
                //dropdown for student
                string waow = "server=localhost;user id=root;database=math1";
                using (MySqlConnection cons = new MySqlConnection(waow))
                {
                    cons.Open();
                    string query = "SELECT students.stud_id as 'ID', concat(students.FirstName,' ',students.LastName) as 'Student' FROM `enrollmentrequest` inner join students on enrollmentrequest.stud_id = students.stud_id";
                    try
                    {
                        using (MySqlCommand cmd = new MySqlCommand(query, cons))
                        {
                           
                                DropDownList1.DataSource = cmd.ExecuteReader();
                                DropDownList1.DataTextField = "Student";
                                DropDownList1.DataValueField = "ID";
                                DropDownList1.DataBind();
                            
                          
                            cons.Close();
                        }
                    }
                    catch (Exception error)
                    {
                        Response.Write(error);
                    }
                    
                }
                //dropdown for teacher
                using (MySqlConnection cons = new MySqlConnection(waow))
                {
                    cons.Open();
                    string query = "SELECT teacher_id as 'ID', concat(FirstName,' ',LastName) as 'teacher' FROM teacher";
                    try
                    {
                        using (MySqlCommand cmd = new MySqlCommand(query, cons))
                        {
                            teacherList.DataSource = cmd.ExecuteReader();
                            teacherList.DataTextField = "teacher";
                            teacherList.DataValueField = "ID";
                            teacherList.DataBind();
                        }
                    }
                    catch (Exception error)
                    {
                        Response.Write(error);
                    }
                    cons.Close();
                }
               
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Text = DropDownList1.SelectedValue;
            string waow = "server=localhost;user id=root;database=math1";
            using (MySqlConnection cons = new MySqlConnection(waow))
            {
                try
                {
                    cons.Open();

                    MySqlCommand utos = new MySqlCommand("SELECT * FROM students where stud_id = '" + int.Parse(DropDownList1.SelectedValue) + "' ", cons);
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
        }

        protected void teacherList_SelectedIndexChanged(object sender, EventArgs e)
        {
            string waow = "server=localhost;user id=root;database=math1";
            using (MySqlConnection cons = new MySqlConnection(waow))
            {
                try
                {

                    cons.Open();

                    MySqlCommand utos = new MySqlCommand("SELECT * FROM teacher where teacher_id = '" + int.Parse(teacherList.SelectedValue) + "' ", cons);
                    MySqlDataReader myRead = utos.ExecuteReader();

                    if (myRead.HasRows == true)
                    {
                        GridView2.DataSource = myRead;
                        GridView2.DataBind();
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
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            blue.query2("insert into classlist(stud_id, teacher_id,section) values ('"+DropDownList1.SelectedValue+"','"+teacherList.SelectedValue+"','"+GradeLevel.SelectedValue+"')");
            blue.query2("delete from enrollmentrequest where stud_id = '"+DropDownList1.SelectedValue+"'");
            blue.query2("insert into auditlog(actionTaken,username,dateAction) values ('Enrolled a student','"+Session["username"].ToString()+"','"+DateTime.Now.ToString("MM/dd/yyyy hh:mm:ss")+"')");
            Label1.Text = "Enrolled Student ";
        }
    }
}
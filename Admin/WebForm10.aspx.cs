using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MATH1.Admin
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        Achievement waow = new Achievement();
        database blue = new database();
        protected void Page_Load(object sender, EventArgs e)
        {
            div1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            div1.Visible = true;
            //full name
            F_name.Text = blue.query2("select concat(FirstName,' ',LastName) as 'Name' from students where stud_id='" +search.Text + "' or username = '" + search.Text + "'");
            //email
            email.Text = blue.query2("select email from students where username = '"+search.Text+"' or stud_id = '"+search.Text+"'");
            //ID getter
            string GetStudId = blue.query2("select stud_id from students where username ='"+search.Text+"'");
            GradeLevel.Text = blue.query2("select gradeLevel from progress where stud_id = '" + GetStudId + "'");
            ID.Text = GetStudId;
            //if enrolled
            string isEnrolled = blue.query2("select stats from students where username = '"+search.Text+"' or stud_id = '"+search.Text+"'");
            
            if(isEnrolled == "inactive")
            {
                
                active.Text = "<button class='w3-button w3-red w3-round-large'>Not Enrolled </button>";
            }
            else
            {
                active.Text = "";
            }
            try
            {
                switch (GradeLevel.Text)
                {
                    case "1":
                        progressBar.Text = waow.grade1(int.Parse(GetStudId), GradeLevel.Text);
                        break;
                    case "2":
                        progressBar.Text = waow.grade1(int.Parse(GetStudId), GradeLevel.Text);
                        break;
                    case "3":
                        progressBar.Text = waow.grade3(int.Parse(GetStudId), GradeLevel.Text);
                        break;
                    case "4":
                        progressBar.Text = waow.grade3(int.Parse(GetStudId), GradeLevel.Text);
                        break;
                    default:
                        progressBar.Text = waow.grade3(int.Parse(GetStudId), GradeLevel.Text);
                        break;

                }

                string waow2 = "server=localhost;user id=root;database=math1";
                using (MySqlConnection cons = new MySqlConnection(waow2))
                {
                    try
                    {

                        cons.Open();

                        MySqlCommand utos = new MySqlCommand("Select stud_id as 'ID', topic from progress where stud_id = '"+GetStudId+"'  ", cons);
                        MySqlDataReader myRead = utos.ExecuteReader();

                        if (myRead.HasRows == true)
                        {
                            GridView1.DataSource = myRead;
                            GridView1.DataBind();
                            //Label1.Text = " ";
                        }                      

                    }
                    catch (Exception err)
                    {
                        Response.Write(err);
                    }
                    cons.Close();
                }
            }
            catch(Exception error)
            {
                Response.Write(error);
            }
        }
    }
}
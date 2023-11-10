using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace MATH1.Teacher
{
    public partial class WebForm4 : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {           
            if (!IsPostBack)
            {
                DropDownList1.DataTextField = "select number";
                database testing = new database();

                string waow = "server=localhost;user id=root;database=math1";
                using (MySqlConnection cons = new MySqlConnection(waow))
                {
                    cons.Open();

                    string query = "SELECT quiz_number, count(quiz_number) FROM `quiz` group by quiz_number having count(quiz_number) > 0";
                    try
                    {
                        using (MySqlCommand cmd = new MySqlCommand(query, cons))
                        {
                            DropDownList1.DataSource = cmd.ExecuteReader();
                            DropDownList1.DataTextField = "quiz_number";
                            DropDownList1.DataValueField = "quiz_number";
                            DropDownList1.DataBind();

                        }

                        string waow1 = "server=localhost;user id=root;database=math1";
                        using (MySqlConnection cons1 = new MySqlConnection(waow1))
                        {


                            string query1 = "select quiz_number as 'Quiz no', quiz_title as 'Title' , item_number as 'Number',  question as 'Question', answer as 'Answer', gradeLevel as 'Grade' from quiz where quiz_number=" + int.Parse(DropDownList1.Text);
                            MySqlCommand sqlcom1 = new MySqlCommand(query1, cons1);
                            cons1.Open();
                            MySqlDataAdapter sda = new MySqlDataAdapter(sqlcom1);
                            DataTable dt1 = new DataTable();
                            sda.Fill(dt1);
                            GridView1.DataSource = dt1;
                            GridView1.DataBind();
                            cons1.Close();
                        }

                    }
                    catch (Exception error)
                    {
                        Response.Write(error);
                    }
                }
            }

        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedquizno = DropDownList1.SelectedItem.Text;
            
            database testing = new database();

            string waow = "server=localhost;user id=root;database=math1";
            using (MySqlConnection cons = new MySqlConnection(waow))
            {


                string query = "select quiz_number as 'Quiz no', quiz_title as 'Title' , item_number as 'Number',  question as 'Question', answer as 'Answer', gradeLevel as 'Grade' from quiz where quiz_number=" + int.Parse(DropDownList1.SelectedItem.Text);
                MySqlCommand sqlcom = new MySqlCommand(query, cons);
                cons.Open();
                MySqlDataAdapter sda = new MySqlDataAdapter(sqlcom);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();

                cons.Close();
            }
         
        }
        

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            QuizClass obj = new QuizClass(int.Parse(DropDownList1.Text));
            Label1.Text = "worked " + obj.Selected.ToString();
            Response.Redirect("/Teacher/Editquiz.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;
using System.Reflection.Emit;
using System.Web.Services.Description;

namespace MATH1.Teacher
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        QuizClass blue = new QuizClass();
        database testing = new database();

        protected void Page_Load(object sender, EventArgs e)
        {           
            //dropdownlist value
            quizNo.Text = blue.Selected.ToString();
            if (!IsPostBack)
            {
                DropDownList1.DataTextField = "select number";
                database testing = new database();

                string waow = "server=localhost;user id=root;database=math1";
                using (MySqlConnection cons = new MySqlConnection(waow))
                {
                    cons.Open();

                    string query = "SELECT item_number FROM `quiz`where quiz_number = '" + blue.Selected + "';";
                    try
                    {
                        using (MySqlCommand cmd = new MySqlCommand(query, cons))
                        {
                            DropDownList1.DataSource = cmd.ExecuteReader();
                            DropDownList1.DataTextField = "item_number";
                            DropDownList1.DataValueField = "item_number";
                            DropDownList1.DataBind();

                        }
                        //fill gridview
                        string waow1 = "server=localhost;user id=root;database=math1";
                        using (MySqlConnection cons1 = new MySqlConnection(waow1))
                        {
                            string query1 = "select  item_number as 'Item Number ', quiz_title as 'Title ' ,  question as 'Question ', answer as 'Answer ', gradeLevel as 'Grade ' from quiz where quiz_number='" + blue.Selected + "' and item_number ='" + DropDownList1.Text + "'";
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
                        testing1.Text = error.ToString();
                    }
                }
            }
        }
            //filling the text box from database          
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
          
            string selectedquizno = DropDownList1.SelectedItem.Text;
            
            //table
            string waow = "server=localhost;user id=root;database=math1";
            using (MySqlConnection cons = new MySqlConnection(waow))
            {


                string query = "select  item_number as 'Item Number ', quiz_title as 'Title ' ,  question as 'Question ', answer as 'Answer ', gradelevel as 'Grade ' from quiz where Quiz_number='" + blue.Selected + "' and item_number ='" + DropDownList1.Text + "'";
                MySqlCommand sqlcom = new MySqlCommand(query, cons);
                cons.Open();
                MySqlDataAdapter sda = new MySqlDataAdapter(sqlcom);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();

                cons.Close();
            }
            q.Text = testing.query2("select question from quiz where item_number = '"+DropDownList1.SelectedValue+"'");
            a.Text = testing.query2("select answer from quiz where item_number = '" + DropDownList1.SelectedValue + "'");

        }

        protected void update_Click(object sender, EventArgs e)
        {
            if (!CheckBox1.Checked)
            {
                question.Text = q.Text;
            }
            if (!CheckBox2.Checked)
            {
                answer.Text = a.Text;                
            }
            testing.query2("update quiz set question = '"+question.Text+"', answer = '"+answer.Text+"' where quiz_number = '"+blue.Selected+"' and item_number = '"+DropDownList1.SelectedValue+"'");
            testing.query2("insert into auditlog(actionTaken, username,dateAction ) values ('Updated quiz','"+Session["username"].ToString()+"','"+DateTime.Now.ToString("MM/dd/yyyy HH:mm:ss")+"')");
            Response.Redirect("/Teacher/Editquiz.aspx");
        }
    }
}

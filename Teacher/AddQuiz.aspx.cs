using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace MATH1.Teacher
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        database obj = new database();
        static int type = 0;
        string teacher = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            teacher = obj.query2("select teacher_id from teacher where username = '"+Session["username"].ToString()+"'");
            if (!IsPostBack)
            {
               DropDownList1.Items.Add(new ListItem("Grade 1", "1"));
               DropDownList1.Items.Add(new ListItem("Grade 2", "2"));
                DropDownList1.Items.Add(new ListItem("Grade 3", "3"));
                DropDownList1.Items.Add(new ListItem("Grade 4", "4"));
                DropDownList1.Items.Add(new ListItem("Grade 5", "5"));
                DropDownList1.Items.Add(new ListItem("Grade 6", "6"));
                //table
                try
                {
                    string waow1 = "server=localhost;user id=root;database=math1";
                    using (MySqlConnection cons1 = new MySqlConnection(waow1))
                    {
                        string query1 = "SELECT `quiz_number` as 'Quiz #', `quiz_title` as 'title',item_number , question, answer FROM `quiz` where quiz_number = '"+ QuizNum.Text +"' and teacher_id = '"+teacher+"'";
                        MySqlCommand sqlcom1 = new MySqlCommand(query1, cons1);
                        cons1.Open();
                        MySqlDataAdapter sda = new MySqlDataAdapter(sqlcom1);
                        DataTable dt1 = new DataTable();
                        sda.Fill(dt1);
                        GridView1.DataSource = dt1;
                        GridView1.DataBind();
                        cons1.Close();
                    }
                }catch(Exception err)
                {
                    testing.Text = err.ToString();
                }
            }                   
        }

        

        protected void submit_Click(object sender, EventArgs e)
        {
            
            obj.query("INSERT INTO `quiz`(`quiz_title`, `question`,  `answer`, `quiz_number`, `item_number`, `gradelevel`,`class_id`,`teacher_id`) VALUES ('" + title.Text + "','" + question.Text + "','" + ans.Text + "','" + QuizNum.Text + "','" + item.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList1.SelectedValue + "','"+teacher+"')");

            //table
            try
            {
                string waow1 = "server=localhost;user id=root;database=math1";
                using (MySqlConnection cons1 = new MySqlConnection(waow1))
                {
                    string query1 = "SELECT `quiz_number` as 'Quiz #', `quiz_title` as 'title',item_number , question, answer FROM `quiz` where quiz_number = '" + QuizNum.Text + "' and teacher_id = '"+teacher+"'";
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
            catch (Exception err)
            {
                testing.Text = err.ToString();
            }
            question.Text = "";
            ans.Text = "";
            item.Text = "";
        }
        
    }
}
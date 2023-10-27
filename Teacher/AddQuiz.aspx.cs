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
        static int type = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               DropDownList1.Items.Add(new ListItem("Multiple choice", "1"));
               DropDownList1.Items.Add(new ListItem("Fill in the blanks", "2"));
                try
                {
                    string waow1 = "server=localhost;user id=root;database=math1";
                    using (MySqlConnection cons1 = new MySqlConnection(waow1))
                    {
                        string query1 = "SELECT `Quiz_no` as 'Quiz #', `title` as 'title',number , question, answer, option1,option2,option3 FROM `quiz` where Quiz_no = '"+ QuizNum.Text +"'";
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

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(int.Parse(DropDownList1.SelectedValue) == 1)
            {
                type = 1;
                Label1.Visible = true;
                Label2.Visible = true;
                Label3.Visible = true;
                Label4.Visible = true;
                op1.Visible = true;
                op2.Visible = true;
                op3.Visible = true;
            }
            if (int.Parse(DropDownList1.SelectedValue) == 2)
            {
                type = 2;
                Label1.Visible = false;
                Label2.Visible = false;
                Label3.Visible = false;
                Label4.Visible = false;
                op1.Visible = false;
                op2.Visible = false;
                op3.Visible = false;


            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            database obj = new database();
           
            if(int.Parse(DropDownList1.SelectedValue) == 1)
            {
                obj.query("INSERT INTO `quiz`(`title`, `question`, `option1`, `option2`, `option3`, `answer`, `Type`, `Quiz_no`, `number`, `grade`) VALUES ('" + title.Text + "','" + question.Text + "','" + op1.Text + "','" + op2.Text + "','" + op3.Text + "','" + ans.Text + "','" + DropDownList1.SelectedValue + "','" + QuizNum.Text + "','" + item.Text + "','" + GradeLevel.Text + "')");
            }
            if (int.Parse(DropDownList1.SelectedValue) == 2)
            {
                obj.query("INSERT INTO `quiz`(`title`, `question`,  `answer`, `Type`, `Quiz_no`, `number`, `grade`) VALUES ('" + title.Text + "','" + question.Text + "','" + ans.Text + "','" + DropDownList1.SelectedValue + "','" + QuizNum.Text + "','" + item.Text + "','" + GradeLevel.Text + "')");
            }
            try
            {
                string waow1 = "server=localhost;user id=root;database=math1";
                using (MySqlConnection cons1 = new MySqlConnection(waow1))
                {
                    string query1 = "SELECT `Quiz_no` as 'Quiz #', `title` as 'title',number , question, answer, option1,option2,option3 FROM `quiz` where Quiz_no = '" + QuizNum.Text + "'";
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
            op1.Text = "";
            op2.Text = "";
            op3.Text = "";
        }
        
    }
}
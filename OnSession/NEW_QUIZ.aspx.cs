using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace MATH1.OnSession
{
    public partial class WebForm19 : System.Web.UI.Page
    {
        database blue = new database();
        static int count = 0;
        string waow = "";
        static int num = 0;      
        static bool IsStarted = false;
        static int score = 0;
        static List<string> questionList = new List<string>();
        static List<string> answerKey = new List<string>();
        static string ident = "";
        static string ident2 = "";
         
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = blue.query2("select stud_id from students where username = '"+Session["username"].ToString()+"'");
            string teacher = blue.query2("select teacher_id from classlist where stud_id = '"+id+"'");
            waow = blue.query2("SELECT count(DISTINCT(quiz_Number)) FROM `quiz` where teacher_id = '"+teacher+"'");
            ident = id;
            ident2 = teacher;
            next.Text = "start";
            if (!IsPostBack)
            {
                prev.Visible = false;
                //Label1.Visible = false;
                quizPanel.Visible = false;
                summary.Visible = false;
                go.Visible = false;
                
            }
            Response.Write(num);

        }
     
        protected void next_Click(object sender, EventArgs e)
        {
            prev.Visible = true;
            //Label1.Visible = true;
            go.Visible = true;
            next.Text = "Next";
            if (count >= int.Parse(waow))
            {
                count = int.Parse(waow);
                //Label1.Text = waow;
                title.Text = blue.query2("SELECT quiz_title FROM `quiz` where quiz_number = '" + count + "'");
            }
            else
            {
                count = count + 1;
                //Label1.Text = count.ToString();
                title.Text = blue.query2("SELECT quiz_title FROM `quiz` where quiz_number = '" + count + "'");
            }
        }

        protected void prev_Click(object sender, EventArgs e)
        {
            waow = blue.query2("SELECT count(DISTINCT(quiz_Number)) FROM `quiz`");
            if (count <= 1)
            {
                count = 1;
                //Label1.Text = "1";
                title.Text = blue.query2("SELECT quiz_title FROM `quiz` where quiz_number = '" + count + "'");
            }
            else
            {
                count = count - 1;
                //Label1.Text = count.ToString();
                title.Text = blue.query2("SELECT quiz_title FROM `quiz` where quiz_number = '" + count + "'");
            }
        }

        protected void go_Click(object sender, EventArgs e)
        {
            select.Visible = false;
            quizPanel.Visible = true;
            string counter = blue.query2("SELECT count(item_number) FROM `quiz` where quiz_number = '" + count + "'");
            string connectionString = "server=localhost;user id=root;database=math1";
            //from mysql to a List variable
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                connection.Open();

                // SQL query
                string query = "SELECT question, answer FROM quiz where quiz_number ='" + count + "'";

                // Create a command and execute the query
                using (MySqlCommand command = new MySqlCommand(query, connection))
                {
                    using (MySqlDataReader reader = command.ExecuteReader())
                    {
                        // Check if the reader has rows
                        if (reader.HasRows)
                        {
                            // Read each row
                            while (reader.Read())
                            {
                                // Assuming 'columnName' is the name of the column you want to retrieve
                                string data = reader["question"].ToString();
                                string data2 = reader["answer"].ToString();
                                questionList.Add(data);
                                answerKey.Add(data2);
                            }
                        }
                    }
                }
                testing.Text = questionList[num];
                Response.Write(questionList[num]);
            }
            
        }

        protected void ans_Click(object sender, EventArgs e)
        {

            if (TextBox1.Text == answerKey[num])
            {
                Label2.Text = "<div class='w3-container w3-green'><b>Correct!</b></div>";
                score = score + 1;
            }
            else
            {
                Label2.Text = "<div class='w3-container w3-red'><b>Try again</b></div>";
            }



        }     
        protected void Button1_Click(object sender, EventArgs e)
        {
            num = num + 1;
            int n = num;
            if (num < questionList.Count)
            {
                TextBox1.Text = "";
                Label2.Text = "";
                testing.Text = questionList[num];                
            }
            else
            {
                quizPanel.Visible = false;
                summary.Visible = true;
                scoreDisnut.Text = score.ToString();
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            blue.query("insert into achievements(score_title,score,stud_id,teacher_id,TypeofTask) values ('"+title.Text+"','"+score+"','"+ident+"','"+ident2+"','Quiz')");
        }
    }
}
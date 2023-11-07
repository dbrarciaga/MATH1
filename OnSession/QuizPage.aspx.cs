using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace MATH1.OnSession
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        database blue = new database();
        static string question = "";
        static string op1 = "";
        static string op2 = "";
        static string op3 = "";
        static string answer = "";
        static int count = 0;
        static string waow = "";
        static int star = 0;
        static bool mali = false;
        static int quizType;
        static bool testing = false;
        static int gradeLevel;


        bool checkThis()
        {
            string waow = "server=localhost;user id=root;database=math1";
            using (MySqlConnection cons = new MySqlConnection(waow))
            {
                cons.Open();

                string query = "SELECT * FROM achievements where stud_id =@user ";
                using (MySqlCommand cmd = new MySqlCommand(query, cons))
                {
                    cmd.Parameters.AddWithValue("@user", blue.getId(Session["username"].ToString()).ToString());
                    using (MySqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            return true;
                        }
                        else
                        {
                            return false;
                        }
                        
                    }

                }
            }
        }
        void test()
        {
            string connectionString = "Server=localhost;Database=math1;Uid=root;";
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                connection.Open();
                string query = "SELECT count(`item_number`) FROM quiz where quiz_Number ='" + blue.waow + "' and gradeLevel= '" + gradeLevel + "'";
                using (MySqlCommand command = new MySqlCommand(query, connection))
                {
                    using (MySqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            string s = reader.GetString("count(`item_number`)");
                            waow = s;
                        }
                    }
                }
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            gradeLevel = Int32.Parse(blue.getGradeLevel(Session["username"].ToString()));
            Label1.Text = blue.waow.ToString();
            show.Visible = false;
            TextBox1.Visible = false;
            test();


            //grade 1&2 3&4 5&6//
            if (gradeLevel == 2)
            {
                gradeLevel = 1;
            }
            if (gradeLevel == 4)
            {
                gradeLevel = 3;
            }
            if (gradeLevel == 6)
            {
                gradeLevel = 5;
            }


            if (IsPostBack)
            {
                Button1.Visible = false;
                Button2.Visible = false;
                Button3.Visible = false;
                check.Visible = false;
                TextBox1.Visible = false;
            }
            else
            {
                count = 0;
                star = 0;
                next.Text = "tap here to start";
                Button1.Visible = false;
                Button2.Visible = false;
                Button3.Visible = false;
                check.Visible = false;
            }
            score.Text = "your score: " + star.ToString();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Button1.Text == answer)
            {
                ans.Text = "✅" + answer;
                star = star + 1;
                mali = false;
            }
            else
            {
                ans.Text = "❌";
               
                
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Button2.Text == answer)
            {
                ans.Text = "✅" + answer;
                star = star + 1;
                mali = false;
            }
            else
            {
                ans.Text = "❌";
               
                
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (Button3.Text == answer)
            {
                ans.Text = "✅" + answer;
                star = star + 1;
                mali = false;
            }
            else
            {
                ans.Text = "❌";
            
               
            }
        }
        protected void check_Click(object sender, EventArgs e)
        {
            check.Visible = false;
            TextBox1.Visible = false;

            if (TextBox1.Text == null)
            {
                ans.Text = "no answer";
                check.Visible = true;
                TextBox1.Visible = true;
                mali = false;
            }
            else if (TextBox1.Text == answer)
            {
                ans.Text = "✅" + answer;
                star = star + 1;
                TextBox1.Text = null;
                mali = false;
                next.Visible = true;
                next.Text = "next";
            }
            else
            {
                ans.Text = "❌";
                check.Visible = true;
                TextBox1.Visible = true;
                mali = false;
            }
        }
        protected void next_Click(object sender, EventArgs e)
        {
            Button1.Visible = true;
            Button2.Visible = true;
            Button3.Visible = true;
            next.Text = "next";
            if (mali)
            {
                ans.Text = "try again ";
            }
            else
            {
                ans.Text = "";
                count = count + 1;
                string connectionString = "Server=localhost;Database=math1;Uid=root;";
                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    connection.Open();
                    string query = "SELECT * FROM quiz where gradeLevel= '" + gradeLevel + "' and item_number= '" + count + "' and quiz_Number = '" + blue.waow + "'";
                    using (MySqlCommand command = new MySqlCommand(query, connection))
                    {
                        using (MySqlDataReader reader = command.ExecuteReader())
                        {
                            if (count >= Int32.Parse(waow) & !reader.Read())
                            {
                                quest.Visible = false;
                                ans.Text = "finished! your score is: <br /> " + star.ToString();
                                score.Text = "";
                                next.Visible = false;
                                Button1.Visible = false;
                                Button2.Visible = false;
                                Button3.Visible = false;
                                check.Visible = false;
                                TextBox1.Visible = false;
                                next.Visible = false;
                                number.Visible = false;
                                show.Visible = true;

                                if (checkThis())
                                {
                                    int id = blue.getId(Session["username"].ToString());
                                    blue.query2("insert into achievements(score_title, score, stud_id, teacher_id, typeOfTask) values ('quiz'," + star + ",'" + blue.getId(Session["username"].ToString()) + "','" + blue.getTeacherID(id.ToString()) + "','quiz')");
                                }

                                star = 0;
                                count = 0;
                            }
                            else
                            {

                                question = reader.GetString("question");
                                ///op1 = reader.GetString("option1");
                               /// op2 = reader.GetString("option2");
                               /// op3 = reader.GetString("option3");
                                answer = reader.GetString("answer");
                                quizType = reader.GetInt32("quiz_Number");
                            }

                        }
                    }
                    switch (quizType)
                    {
                        ///case 1:
                            ///number.Text = count.ToString()+"/10" ;
                            ///quest.Text = question;
                            ///Button1.Text = op1;
                            ///Button2.Text = op2;
                            ///Button3.Text = op3;
                            ///check.Visible = false;
                            ///TextBox1.Visible = false;
                            ///break;
                        case 2:
                            {
                                number.Text = count.ToString() + "/5" ;
                                next.Visible = true;
                                next.Text = "skip";
                                Button1.Visible = false;
                                Button2.Visible = false;
                                Button3.Visible = false;
                                quest.Text = question;
                                check.Visible = true;
                                TextBox1.Visible = true;
                            }
                            break;
                        default:
                            break;
                    }

                }


            }
        }
        protected void show_Click(object sender, EventArgs e)
        {

            Response.Redirect("/OnSession/dashboard/dasdboard.aspx");
            
        }

    }
}
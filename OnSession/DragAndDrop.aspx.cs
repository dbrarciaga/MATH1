using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace MATH1.OnSession
{
    public partial class WebForm17 : System.Web.UI.Page
    {

        database blue = new database();
        static string question1 = "";
        static string question2 = "";
        static string question3 = "";
        static string question4 = "";
        static string question5 = "";
        static string op1 = "";
        static string op2 = "";
        static string op3 = "";
        static string op4 = "";
        static string op5 = "";
        static string answer = "";
        static int count = 0;
        static string waow = "";
        static int star = 0;
        static bool mali = false;
        static string quizType = "";
        static bool testing = false;
        static int counter = 0;
        static int score = 0;
        int checkscore = 0;
        int gradeLevel;

        string topic = "quiz 3";
        int isCompleted = 1;
        string typeOfTask = "quiz";

        bool checkThis()
        {
            string waow = "server=localhost;user id=root;database=math1";
            using (MySqlConnection cons = new MySqlConnection(waow))
            {
                cons.Open();

                string query = "SELECT * FROM achievement where stud_id =@user and IsCompleted ='1'";
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
                string query = "SELECT count(`number`) FROM drag&drop where Quiz_no ='" + blue.waow + "'";
                using (MySqlCommand command = new MySqlCommand(query, connection))
                {
                    using (MySqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            string s = reader.GetString("count(`number`)");
                            waow = s;
                        }
                    }
                }
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gradeLevel = Int32.Parse(blue.getGradeLevel(Session["username"].ToString()));

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

                count = count + 1;

                string connectionString = "Server=localhost;Database=math1;Uid=root;";
                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    connection.Open();
                    counter = 1;

                    Random rnd = new Random();
                    int r = rnd.Next(1, 3);

                    counter = r;
                    incomplete.Text = counter.ToString();



                    string query = "SELECT * FROM dragdrop where number= '" + 1 + "' and Quiz_no = '" + 3 + "' and grade= '" + gradeLevel + "'";
                    using (MySqlCommand command = new MySqlCommand(query, connection))
                    {
                        using (MySqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {


                                question1 = reader.GetString("q1");
                                op1 = reader.GetString("a1");
                                question2 = reader.GetString("q2");
                                op2 = reader.GetString("a2");
                                question3 = reader.GetString("q3");
                                op3 = reader.GetString("a3");
                                question4 = reader.GetString("q4");
                                op4 = reader.GetString("a4");
                                question5 = reader.GetString("q5");
                                op5 = reader.GetString("a5");


                                Drop1.Text = question1;
                                Drag1.Text = op1;
                                Drop2.Text = question2;
                                Drag2.Text = op2;
                                Drop3.Text = question3;
                                Drag3.Text = op3;
                                Drop4.Text = question4;
                                Drag4.Text = op4;
                                Drop5.Text = question5;
                                Drag5.Text = op5;

                            }

                        }
                    }
                }
            }




        }
        protected void sbmt_Click(object sender, EventArgs eventArgs)
        {
            string whatScore = hidScore.Value;


            if (whatScore != "5")
            {
                incomplete.Text = "Please complete the test";
            }
            else
            {

                incomplete.Text = whatScore + "/" + "5" + " " + "Good Job";




                //ex1 
                int id = blue.getId(Session["username"].ToString());
                string connectionString = "server=localhost;user id=root;database=math1";
                MySqlConnection conn = new MySqlConnection(connectionString);
                MySqlCommand cmd = new MySqlCommand("INSERT INTO achievements(`stud_id`, `score_title`, `teacher_id`, `score`, `typeOfTask`) values ('" + blue.getId(Session["username"].ToString()) + "','" + "Drag and Drop" + "','" + blue.getTeacherID(id.ToString()) + "','" + whatScore + "','" + "Quiz" + "');", conn);

                try
                {

                    conn.Open();
                    cmd.ExecuteNonQuery();
                    Response.Redirect("/OnSession/dashboard/dasdboard.aspx");

                }
                catch (Exception error)
                {
                    incomplete.Text = error.ToString();
                }

            }
        }
    }
}




using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Media;
using MySql.Data.MySqlClient;

namespace MATH1.Story
{

    public partial class WebForm1 : System.Web.UI.Page
    {

        database blue = new database();
        static string user = "";

        int ans1;


        int gradeLevel;


        static string qTitle11;
        static string addQ11;
        static string ex1Img1;
        static string ex1Img2;
        static string ex1Img3;
        static string ex1Aud1;
        static int ans11;


        static int counter = 1;
        


        static int score = 0;
        static int baseScore;

        
        protected void Page_Load(object sender, EventArgs e)
        {
            string selectedValue = HiddenFieldValue.Value;
            TextBox1.Text = selectedValue;

            if (Session["username"] == null)
            {
                Response.Redirect("/Main/Login/LogIn.aspx");
            }
            else
            {
                user = Session["username"].ToString();
                baseScore = Int32.Parse(blue.getScore(Session["username"].ToString()));
            }

            gradeLevel = Int32.Parse(blue.getGradeLevel(Session["username"].ToString()));

            if (!IsPostBack)
            {
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
                string connectionString = "Server=localhost;Database=math1;Uid=root;";

                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    connection.Open();


                    string query = "SELECT * FROM storyboard where grade_level= '" + gradeLevel + "' and topic ='addition' and exercise_num = '" + counter + "'";
                    using (MySqlCommand command = new MySqlCommand(query, connection))
                    {
                        using (MySqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                exercisenum.Text = "Exercise" + " " + counter;
                                title1.Text = reader.GetString("title");

                                qTitle11 = reader.GetString("questionTitle");
                                addQ11 = reader.GetString("question");
                                ex1Img1 = reader.GetString("exercise_image");
                                ex1Img2 = reader.GetString("exercise_image2");
                                ex1Img3 = reader.GetString("exercise_image3");
                                ex1Aud1 = reader.GetString("exercise_audio");
                                ans11 = Int32.Parse(reader.GetString("answer"));

                                qTitle1.Text = qTitle11;
                                addQ1.Text = addQ11;
                                ex1Img.Src = ex1Img1;
                                ex1Img2s.Src = ex1Img2;
                                ex1Img3s.Src = ex1Img3;
                                ex1Aud.Src = ex1Aud1;
                                ans1 = ans11;
                                rbImage3.Attributes["Value"] = reader.GetString("answer").ToString(); ; // Set the custom value

                
                                

                                score = 0;

                            }

                        }
                    }
                }





            }

        }

        protected void submit_Click1(object sender, EventArgs e)

        {
   

            if (TextBox1.Text == "" || TextBox1.Text == "=")
            {
                Label1.Text = "Good Effort, don't worry You can always try again !";
                TextBox1.Text = "=";
                SoundPlayer player = new SoundPlayer();
                player.Stream = MATH1.Properties.Resources.incorrect_try_again;
                player.Play();

            }
            else if (TextBox1.Text == ans11.ToString())
            {

                
                counter = counter + 1;
                TextBox1.Text = "=";
                Label1.Text = "Good Job your answer is correct, You Get (1) Star!";
                score++;
                Label1.Text = "Good Job your answer is correct, You Get (1) Star!";
                SoundPlayer player = new SoundPlayer();
                player.Stream = MATH1.Properties.Resources.correct_well_done;
                player.Play();

                //Answered Exercises will not gain stars.
                if (baseScore < 4)
                {
                    blue.ScoreAdd(user, "1");
                    score = score + 1;
                }
                ///////////////////////////////////////////////////asdasd///////////////////////////////////////////////////////
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
                string connectionString = "Server=localhost;Database=math1;Uid=root;";
                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    connection.Open();


                    string query = "SELECT * FROM storyboard where grade_level= '" + gradeLevel + "' and topic ='addition' and exercise_num = '" + counter + "'";
                    using (MySqlCommand command = new MySqlCommand(query, connection))
                    {
                        using (MySqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                exercisenum.Text = "Exercise" + " " + counter;

                                title1.Text = reader.GetString("title");

                                qTitle11 = reader.GetString("questionTitle");
                                addQ11 = reader.GetString("question");
                                ex1Img1 = reader.GetString("exercise_image");
                                ex1Img2 = reader.GetString("exercise_image2");
                                ex1Img3 = reader.GetString("exercise_image3");
                                ex1Aud1 = reader.GetString("exercise_audio");
                                ans11 = Int32.Parse(reader.GetString("answer"));

                                qTitle1.Text = qTitle11;
                                addQ1.Text = addQ11;
                                ex1Img.Src = ex1Img1;
                                ex1Img2s.Src = ex1Img2;
                                ex1Img3s.Src = ex1Img3;
                                ex1Aud.Src = ex1Aud1;
                                ans1 = ans11;
                                rbImage3.Attributes["Value"] = reader.GetString("answer").ToString(); ; // Set the custom value


                            }

                        }
                    }
                    if (counter > 4) //to reset counter
                    {
                        xrsc.Visible = false;
                        summary.Visible = true;
                        Button2.Text = "exercise Finished";
                        counter = 1;
                       

                    }
                }
                ///////////////////////////////////////////////////////////////////////////////////////////////////////////////
            }
            else
            {
                Label1.Text = "Good Effort, don't worry You can always try again !";
                TextBox1.Text = "=";         
                SoundPlayer player = new SoundPlayer();
                player.Stream = MATH1.Properties.Resources.incorrect_try_again;
                player.Play();



            }



        }
        protected void submit_Click5(object sender, EventArgs e)
        {

            Label5.Text = score + "/4";
            Button5.Visible = false;
            int id = blue.getId(Session["username"].ToString());
            //progress checker
            string check = blue.query2("select id from progress where stud_id = '"+id+ "' and topic = 'ADDITION' and gradeLevel = '"+ blue.getGradeLevel(Session["username"].ToString()) + "'");
            //mag iinsert ng row if walang laman si row, tapos if may laman si row, i-ignore na tong if-condition
            if(check == null)
            {
                blue.query2("insert into progress(topic,gradelevel,stud_id) values ('ADDITION','"+blue.getGradeLevel(Session["username"].ToString())+"','"+id+"')");
            }
            //ex1 
            string connectionString = "server=localhost;user id=root;database=math1";
            MySqlConnection conn = new MySqlConnection(connectionString);
            MySqlCommand cmd = new MySqlCommand("INSERT INTO achievements(`score_title`, `score`,`stud_id`,`teacher_id`, `typeOfTask`) values (' ADDITION','" + score + "','" + id  + "','"+blue.getTeacherID(id.ToString()) +"','" + "Exercise" + "');", conn);

            try
            {

                conn.Open();
                cmd.ExecuteNonQuery();

                score = 0;
            }
            catch (Exception error)
            {
                Label5.Text = error.ToString();
            }

            
        }




    }
}
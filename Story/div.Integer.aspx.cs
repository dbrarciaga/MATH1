﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Media;
using MySql.Data.MySqlClient;

namespace MATH1.Story
{

    public partial class WebForm7 : System.Web.UI.Page
    {
        database blue = new database();
        static string user = "";

        int ans1;


        int gradeLevel;


        static string qTitle11;
        static string addQ11;
        static string ex1Img1;
        static string ex1Aud1;
        static int ans11;


        static int counter = 1;



        static int score = 0;
        static int baseScore;


        protected void Page_Load(object sender, EventArgs e)
        {
            
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


                    string query = "SELECT * FROM storyboard where grade_level= '" + gradeLevel + "' and topic ='dInt' and exercise_num = '" + counter + "'";
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
                                ex1Aud1 = reader.GetString("exercise_audio");
                                ans11 = Int32.Parse(reader.GetString("answer"));

                                Img1.Src = ex1Img1;


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
                Label1.Text = "Please Answer on the required fields!";
                SoundPlayer player = new SoundPlayer();
                player.Stream = MATH1.Properties.Resources.answer_required_fields;
                player.Play();
            }
            else if (TextBox1.Text == ans11.ToString())
            {
                counter = counter + 1;
                TextBox1.Text = "=";
                Label1.Text = "Good Job your answer is correct, You Get (1) Star!";
                score++;
                SoundPlayer player = new SoundPlayer();
                player.Stream = MATH1.Properties.Resources.correct_well_done;
                player.Play();

                //Answered Exercises will not gain stars.
                if (baseScore < 28)
                {
                    blue.ScoreAdd(user, "1");
                    score = score + 1;
                }
                //////////////////////////////////////////////////////////////////////////////////////////////////////////
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


                    string query = "SELECT * FROM storyboard where grade_level= '" + gradeLevel + "' and topic ='dInt' and exercise_num = '" + counter + "'";
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
                                ex1Aud1 = reader.GetString("exercise_audio");
                                ans11 = Int32.Parse(reader.GetString("answer"));



                                Img1.Src = ex1Img1;




                            }

                        }
                    }
                    if (counter > 4) //to reset counter
                    {
                        xrsc.Visible = false;
                        summary.Visible = true;
                        Button2.Text = "exercise Finished";
                        counter = 1;
                        Button5.Visible = true;

                    }
                }
                ///////////////////////////////////////////////////////////////////////////////////////////////////////////////
            }
            else
            {
                Label1.Text = "Try again !";
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
            

            //ex1 
            string connectionString = "server=localhost;user id=root;database=math1";
            MySqlConnection conn = new MySqlConnection(connectionString);
            MySqlCommand cmd = new MySqlCommand("INSERT INTO achievements(`score_title`, `score`,`stud_id`, `typeOfTask`) values ('" + title1.Text + "','" + score + "','" + blue.getId(Session["username"].ToString()) + "','" + "Exercise" + "');", conn);

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
            Response.Redirect("/OnSession/progress.aspx");

        }
    }
}
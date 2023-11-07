using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace MATH1.OnSession
{

        public partial class WebForm3 : System.Web.UI.Page
    {
        database blue = new database();
        Achievement waow = new Achievement();
        int score = 0;
        string testing;
        int gradeLevel=0;

       

        protected void Page_Load(object sender, EventArgs e)

        {
            if (Session["username"]== null)
            {
                Response.Redirect("/Main/NewHomePage.aspx");
            }
            else
            {
                Label1.Text = "Your topics for Grade: "+ blue.getGradeLevel(Session["username"].ToString());
                score = Int32.Parse(blue.getScore(Session["username"].ToString()));
                gradeLevel = Int32.Parse(blue.getGradeLevel(Session["username"].ToString()));
            }
            //gradeLevel Condition
            if (gradeLevel == 1)
            {
                progressBar.Text = waow.grade1(blue.getId(Session["username"].ToString()), blue.getGradeLevel(Session["username"].ToString()));
                LinkButton5.Visible = false;
                LinkButton6.Visible = false;
                LinkButton7.Visible = false;
                LinkButton8.Visible = false;
                LinkButton9.Visible = false;
            }
            if (gradeLevel == 2)
            {
                progressBar.Text = waow.grade1(blue.getId(Session["username"].ToString()), blue.getGradeLevel(Session["username"].ToString()));
                LinkButton5.Visible = false;
                LinkButton6.Visible = false;
                LinkButton7.Visible = false;
                LinkButton8.Visible = false;
                LinkButton9.Visible = false;
            }
            if (gradeLevel == 3)
            {
                progressBar.Text = waow.grade3(blue.getId(Session["username"].ToString()), blue.getGradeLevel(Session["username"].ToString()));
                LinkButton7.Visible = false;
                LinkButton8.Visible = false;
                LinkButton9.Visible = false;
            }
            if (gradeLevel == 4)
            {
                progressBar.Text = waow.grade1(blue.getId(Session["username"].ToString()), blue.getGradeLevel(Session["username"].ToString()));
                LinkButton7.Visible = false;
                LinkButton8.Visible = false;
                LinkButton9.Visible = false;
            }


            //starts condition
            //add
            if (score == 1)
            {
                Label11.Text = "";
            }
            else if(score>=4)
            {
                Label11.Text = "Exercise Finised";
            }
            //sub
            if (score < 4)
            {
                Label3.Text = "LOCKED";
            }
            else if (score >= 8)
            {
                Label3.Text = "Exercise Finised";
            }
            //mult
            if (score < 8)
            {
                Label4.Text = "LOCKED";
            }
            else if (score >= 12)
            {
                Label4.Text = "Exercise Finised";
            }
            //div
            if (score < 12)
            {
                Label5.Text = "LOCKED";     
            }
            else if (score >= 16)
            {
                Label5.Text = "Exercise Finised";
            }
            //addsub int
            if (score < 16)
            {
                Label6.Text = "LOCKED";
            }
            else if (score >= 20)
            {
                Label6.Text = "Exercise Finised";
            }
            //mult int
            if (score <  20)
            {
               Label7.Text = "LOCKED";
            }
            else if (score >= 24)
            {
                Label7.Text = "Exercise Finised";
            }
            //div int
            if (score <  24)
            {
                Label2.Text = "LOCKED";
            }
            else if (score >= 28)
            {
                Label2.Text = "Exercise Finised";
            }
            //operations
            if (score <32)
            {
                Label8.Text = "LOCKED";
            }
            else if (score >= 34)
            {
                Label8.Text = "Exercise Finised";
            }
            //exponents
            if (score <  28)
            {
                Label9.Text = "LOCKED";
            }
            else if (score >= 32)
            {
                Label9.Text = "Exercise Finised";
            }
            Button1.Visible = false;
            if(progressBar.Text == "<div class='w3-border w3-white'><div class='w3-green' style='height:24px;width:100%'>100%</div></div>")
            {
                Button1.Visible = true;
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            
                Response.Redirect("/Story/Addition.aspx");
                if (score >= 4)
                {
                    Label11.Text = "Excercise Finished. Well Done";
                }
         

        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            LinkButton2.Visible = true;
            if (score >= 4)
            {
                Response.Redirect("/Story/Subtraction.aspx");
                Label11.Text = "Excercise Finished. Well Done";
            }
            else
            {
                Label3.Text = "Oh nooooo! You need at least 4 stars to unlock this activity";
            }





        }
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            LinkButton3.Visible = true;
            if (score >= 8)
            {
                Response.Redirect("/Story/Multiplication.aspx");
            }
            else
            {
                Label4.Text = "Oh nooooo! You need at least 8 stars to unlock this activity";
            }
            
        }
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            LinkButton4.Visible = true;
            if (score >= 12)
            {
                Response.Redirect("/Story/Division.aspx");
            }
            else
            {
                Label5.Text = "Oh nooooo! You need at least 12 stars to unlock this activity";
            }

        }
        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            LinkButton5.Visible = true;
            if (score >= 16)
            {
                Response.Redirect("/Story/add.subtract.Integers.aspx");
            }
            else
            {
                Label7.Text = "Oh nooooo! You need at least 16 stars to unlock this activity";
            }

        }
        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            LinkButton6.Visible = true;
            if (score >= 20)
            {
                Response.Redirect("/Story/mult.Integer.aspx");
            }
            else
            {
                Label6.Text = "Oh nooooo! You need at least 20 stars to unlock this activity";
            }

        }      
        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            LinkButton7.Visible = true;
            if (score >= 24)
            {
                Response.Redirect("/Story/div.Integer.aspx");
            }
            else
            {
                Label2.Text = "Oh nooooo! You need at least 24 stars to unlock this activity";
            }

        }
        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            LinkButton8.Visible = true;
            if (score >= 28)
            {
                Response.Redirect("/Story/Exponents.aspx");
            }
            else
            {
                Label9.Text = "Oh nooooo! You need at least 28 stars to unlock this activity";
            }

        }
        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            LinkButton9.Visible = true;
            if (score >= 30)
            {
                Response.Redirect("/Story/order.of.Operation.aspx");
            }
            else
            {
                Label8.Text = "Oh nooooo! You need at least 30 stars to unlock this activity";
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int getGrade = int.Parse(blue.getGradeLevel(Session["username"].ToString()));
            getGrade = getGrade + 1;
            blue.query2("update students set gradeLevel = '"+getGrade+"' where username = '"+Session["username"].ToString()+"'");
            Response.Redirect("Congrats.aspx");
        }
    }
}
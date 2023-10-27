using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace MATH1.Teacher
{
    public partial class WebForm3 : System.Web.UI.Page
    {

        database blue = new database();
        static int num = 0;
        public int Num
        {
            get { return num; }
            set { num = value; }
        }
        bool checkList(string user, int grade)
        {
            try
            {
                string conn = "server=localhost;user id=root;database=math1";
                using (MySqlConnection cons = new MySqlConnection(conn))
                {
                    cons.Open();
                    MySqlCommand utos = new MySqlCommand("select * from classlist where teacher = '"+user+"' and Gradelevel = '"+grade+"'",cons);
                    MySqlDataReader myRead = utos.ExecuteReader();
                    if(myRead.HasRows == true)
                    {
                        return true;
                    }

                }
            }
            catch(Exception e)
            {
                return false;
            }
            return false;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            LinkButton1.Visible = false;
            LinkButton2.Visible = false;
            LinkButton3.Visible = false;
            LinkButton4.Visible = false;
            LinkButton5.Visible = false;
            LinkButton6.Visible = false;
            if (Session["username"] == null)
            {
                Response.Redirect("/Main/Login/LogIn.aspx");
            }
            if(checkList(Session["username"].ToString(), 1))
            {
                LinkButton1.Visible = true;
            }
            if (checkList(Session["username"].ToString(), 2))
            {
                LinkButton2.Visible = true;
            }
            if (checkList(Session["username"].ToString(), 3))
            {
                LinkButton3.Visible = true;
            }
            if (checkList(Session["username"].ToString(), 4))
            {
                LinkButton4.Visible = true;
            }
            if (checkList(Session["username"].ToString(), 5))
            {
                LinkButton5.Visible = true;
            }
            if (checkList(Session["username"].ToString(), 6))
            {
                LinkButton6.Visible = true;
            }
        }

        protected void search_Click(object sender, EventArgs e)
        {
            if (search.Text == "")
            {
                Label1.Text = "Enter the required fields!";
                return;
            }
            string waow = "server=localhost;user id=root;database=math1";
            using (MySqlConnection cons = new MySqlConnection(waow))
            {
                try
                {

                    cons.Open();

                    MySqlCommand utos = new MySqlCommand("select * from achievement where stud_id = '" + TextBox1.Text + "' ", cons);
                    MySqlDataReader myRead = utos.ExecuteReader();
                    if (myRead.HasRows == true)
                    {
                        GridView1.DataSource = myRead;
                        GridView1.DataBind();
                        Label1.Text = "scores of " + blue.getInfo(TextBox1.Text) ;
                    }
                    else
                    {
                        Label1.Text = "<div class='button1'> user not found! </div>";

                    }
                }
                catch (Exception err)
                {
                    Label1.Text = err.ToString();
                }
            }
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Roster obj = new Roster(1);
            Response.Redirect("ViewGradePerRoster.aspx");
        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Roster obj = new Roster(2);
            Response.Redirect("ViewGradePerRoster.aspx");
        }
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Roster obj = new Roster(3);
            Response.Redirect("ViewGradePerRoster.aspx");
        }
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Roster obj = new Roster(4);
            Response.Redirect("ViewGradePerRoster.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Roster obj = new Roster(5);
            Response.Redirect("ViewGradePerRoster.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Roster obj = new Roster(6);
            Response.Redirect("ViewGradePerRoster.aspx");
        }

     

    
       

      

      
    }
}
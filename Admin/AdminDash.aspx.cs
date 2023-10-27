using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace MATH1.Admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string waow = "server=localhost;user id=root;database=math1";
            using (MySqlConnection cons = new MySqlConnection(waow))
            {
                string teacher = "teacher";

                try
                {

                    cons.Open();

                    MySqlCommand utos = new MySqlCommand("select id,FirsName,LastName,username from students where userType = '" + teacher + "'  ", cons);
                    MySqlDataReader myRead = utos.ExecuteReader();

                    if (myRead.HasRows == true)
                    {
                        GridView1.DataSource = myRead;
                        GridView1.DataBind();
                        Label1.Text = " ";
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
                cons.Close();
            }
            using (MySqlConnection cons = new MySqlConnection(waow))
            {

                string student = "student";
                try
                {

                    cons.Open();

                    MySqlCommand utos = new MySqlCommand("select id,FirsName,LastName,username from students where userType = '" + student + "'  ", cons);
                    MySqlDataReader myRead = utos.ExecuteReader();

                    if (myRead.HasRows == true)
                    {
                        GridView2.DataSource = myRead;
                        GridView2.DataBind();
                        Label1.Text = " ";
                    }
                    else
                    {
                        Label1.Text = "<div class='button1'> user not found! </div>";

                    }

                }
                catch (Exception err)
                {
                    Label1.Text = err.ToString();
                }cons.Close();
            }
            using (MySqlConnection cons = new MySqlConnection(waow))
            {

               
                try
                {

                    cons.Open();

                    MySqlCommand utos = new MySqlCommand("select username,requesttype from requests", cons);
                    MySqlDataReader myRead = utos.ExecuteReader();

                    if (myRead.HasRows == true)
                    {
                        GridView3.DataSource = myRead;
                        GridView3.DataBind();
                        Label1.Text = " ";
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
                cons.Close();
            }

            using (MySqlConnection cons = new MySqlConnection(waow))
            {
              
                try
                {

                    cons.Open();

                    MySqlCommand utos = new MySqlCommand("select STUD_id,FirsTName,LastName,GradeLevel from enrollmentrequest", cons);
                    MySqlDataReader myRead = utos.ExecuteReader();

                    if (myRead.HasRows == true)
                    {
                        GridView4.DataSource = myRead;
                        GridView4.DataBind();
                        Label1.Text = " ";
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
                cons.Close();
            }
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
           
        }




    }
}




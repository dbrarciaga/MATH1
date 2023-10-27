using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace MATH1.Admin
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("/Main/Login/LogIn.aspx");
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string waow = "server=localhost;user id=root;database=math1";
            using (MySqlConnection cons = new MySqlConnection(waow))
            {
                try
                {

                    cons.Open();

                    MySqlCommand utos = new MySqlCommand("select id,FirsName,LastName,username,userType from students where username = '" + FindSomebody.Text + "' or id = '" + FindSomebody.Text + "' ", cons);
                    MySqlDataReader myRead = utos.ExecuteReader();
                    if (myRead.HasRows == true)
                    {
                        GridView1.DataSource = myRead;
                        GridView1.DataBind();
                        Label1.Text = "    ";
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            string value = "UPDATE `students` SET `userType` = 'teacher' WHERE username = '" + FindSomebody.Text + "' or id = '" + FindSomebody.Text + "'; ";
            string konn = "server=localhost;user id=root;database=math1";
            MySqlConnection dataKonn = new MySqlConnection(konn);
            MySqlCommand utos = new MySqlCommand(value, dataKonn);
            try
            {
                dataKonn.Open();
                MySqlDataReader myReader = utos.ExecuteReader();
                if (myReader.HasRows)
                {
                    while (myReader.Read()) ;
                    value = myReader.GetString(0);
                }
                else
                {
                    Label1.Text = "wow";
                }

            }
            catch (Exception ewaow)
            {
                Label1.Text = ewaow.ToString();
            }
            Label1.Text = FindSomebody.Text + " has been set as Teacher";

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string value = "UPDATE `students` SET `userType` = 'student' WHERE username = '" + FindSomebody.Text + "' or id = '" + FindSomebody.Text + "'; ";
            string konn = "server=localhost;user id=root;database=math1";
            MySqlConnection dataKonn = new MySqlConnection(konn);
            MySqlCommand utos = new MySqlCommand(value, dataKonn);
            try
            {
                dataKonn.Open();
                MySqlDataReader myReader = utos.ExecuteReader();
                if (myReader.HasRows)
                {
                    while (myReader.Read()) ;
                    value = myReader.GetString(0);
                }
                else
                {
                    Label1.Text = "wow";
                }

            }
            catch (Exception ewaow)
            {
                Label1.Text = ewaow.ToString();
            }
            Label1.Text = FindSomebody.Text + " has been set as Student";

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string value = "UPDATE `students` SET `userType` = 'admin' WHERE username = '" + FindSomebody.Text + "' or id = '" + FindSomebody.Text + "'; ";
            string konn = "server=localhost;user id=root;database=math1";
            MySqlConnection dataKonn = new MySqlConnection(konn);
            MySqlCommand utos = new MySqlCommand(value, dataKonn);
            try
            {
                dataKonn.Open();
                MySqlDataReader myReader = utos.ExecuteReader();
                if (myReader.HasRows)
                {
                    while (myReader.Read()) ;
                    value = myReader.GetString(0);
                }
                else
                {
                    Label1.Text = "wow";
                }

            }
            catch (Exception ewaow)
            {
                Label1.Text = ewaow.ToString();
            }
            Label1.Text = FindSomebody.Text + " has been set as Admin";
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string value = "UPDATE `students` SET `pass` = 'changeme' WHERE username = '" + FindSomebody.Text + "' or id = '" + FindSomebody.Text + "'; ";
            string konn = "server=localhost;user id=root;database=math1";
            MySqlConnection dataKonn = new MySqlConnection(konn);
            MySqlCommand utos = new MySqlCommand(value, dataKonn);
            try
            {
                dataKonn.Open();
                MySqlDataReader myReader = utos.ExecuteReader();
                if (myReader.HasRows)
                {
                    while (myReader.Read()) ;
                    value = myReader.GetString(0);
                }
                else
                {
                    Label1.Text = "wow";
                }

            }
            catch (Exception ewaow)
            {
                Label1.Text = ewaow.ToString();
            }
            Label1.Text = FindSomebody.Text + "'s Password changed to default";
            dataKonn.Close();

            
            string deletereq = "DELETE from `requests`  WHERE username ='" + FindSomebody.Text + "'; ";
            string konnn = "server=localhost;user id=root;database=math1";
            MySqlConnection dataKonnn = new MySqlConnection(konnn);
            MySqlCommand utos2 = new MySqlCommand(deletereq, dataKonnn);
            try
            {
                dataKonnn.Open();
                MySqlDataReader myReader = utos2.ExecuteReader();
                if (myReader.HasRows)
                {
                    while (myReader.Read()) ;
                    deletereq = myReader.GetString(0);
                }
                else
                {
                    Label1.Text = "wow";
                }

            }
            catch (Exception ewaow)
            {
                Label1.Text = ewaow.ToString();
            }
            
            dataKonnn.Close();
            Label1.Text = FindSomebody.Text + "'s Password changed to default";
        }
       
         
        

        protected void Button7_Click(object sender, EventArgs e)
        {
            string deleteacc = "DELETE from `students`  WHERE username = '" + FindSomebody.Text + "' or id='"+ FindSomebody.Text+"'; ";
            string konnn = "server=localhost;user id=root;database=math1";
            MySqlConnection dataKonnn = new MySqlConnection(konnn);
            MySqlCommand utos2 = new MySqlCommand(deleteacc, dataKonnn);
            try
            {
                dataKonnn.Open();
                MySqlDataReader myReader = utos2.ExecuteReader();
                if (myReader.HasRows)
                {
                    while (myReader.Read()) ;
                    deleteacc = myReader.GetString(0);
                }
                else
                {
                    Label1.Text = "wow";
                }

            }
            catch (Exception ewaow)
            {
                Label1.Text = ewaow.ToString();
            }
            //Label1.Text = FindSomebody.Text + "'s Password changed to default";
            //dataKonnn.Close();

            string deletereq = "DELETE from `requests`  WHERE username = '" + FindSomebody.Text + "' or id='" + FindSomebody.Text + "'; ";
           // string konnn = "server=localhost;user id=root;database=math1";
           // MySqlConnection dataKonnn = new MySqlConnection(konnn);
           // MySqlCommand utos2 = new MySqlCommand(deletereq, dataKonnn);
            try
            {
               // dataKonnn.Open();
                MySqlDataReader myReader = utos2.ExecuteReader();
                if (myReader.HasRows)
                {
                    while (myReader.Read()) ;
                    deletereq = myReader.GetString(0);
                }
                else
                {
                    Label1.Text = "wow";
                }

            }
            catch (Exception ewaow)
            {
                Label1.Text = ewaow.ToString();
            }
            Label1.Text = FindSomebody.Text + "'s Account has been deleted";
            dataKonnn.Close();
        }
    }
    }
    

   

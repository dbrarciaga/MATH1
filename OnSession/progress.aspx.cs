using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace MATH1.OnSession
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        database blue = new database();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("/Main/Login/LogIn.aspx");
            }
            try
            {
                Label1.Text = Int32.Parse(blue.getScore(Session["username"].ToString())).ToString();
            }
            catch (Exception err)
            {
                Label1.Text = err.ToString();
            }
            /////////////
            ///
            string waow = "server=localhost;user id=root;database=math1";
            using (MySqlConnection cons = new MySqlConnection(waow))
            {
                try
                {
                    cons.Open();

                    MySqlCommand utos = new MySqlCommand("select distinct topic, score from achievement where stud_id ='" + blue.getId(Session["username"].ToString()) + "' and typeOfTask ='exercise'", cons);
                    MySqlDataReader myRead = utos.ExecuteReader();
                    if (myRead.HasRows == true)
                    {
                        GridView1.DataSource = myRead;
                        GridView1.DataBind();

                    }
                    cons.Close();
                }
                catch (Exception err)
                {
                    Label1.Text = err.ToString();
                }

            }
            using (MySqlConnection cons = new MySqlConnection(waow))
            {
                try
                {
                    cons.Open();

                    MySqlCommand utos = new MySqlCommand("select distinct topic, score from achievement where stud_id ='" + blue.getId(Session["username"].ToString()) + "' and typeOfTask ='quiz'", cons);
                    MySqlDataReader myRead = utos.ExecuteReader();
                    if (myRead.HasRows == true)
                    {
                        GridView2.DataSource = myRead;
                        GridView2.DataBind();

                    }
                    cons.Close();
                }
                catch (Exception err)
                {
                    Label1.Text = err.ToString();
                }
            }
        }
    }
}
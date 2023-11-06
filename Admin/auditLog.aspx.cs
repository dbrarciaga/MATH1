using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace MATH1.Admin
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string waow = "server=localhost;user id=root;database=math1";
            using (MySqlConnection cons = new MySqlConnection(waow))
            {
                try
                {

                    cons.Open();

                    MySqlCommand utos = new MySqlCommand("Select actionTaken,username, dateAction from auditlog  ", cons);
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
                    Response.Write(err);
                }
                cons.Close();
            }

        }
    }
}